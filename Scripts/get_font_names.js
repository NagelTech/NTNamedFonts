


function extractFontNames(url, completion)
{
	var jsdom = require("jsdom");

	jsdom.env(
		url,
		["http://code.jquery.com/jquery.js"],
		function(errors, window)
		{
			var $ = window.$;

		  	var fontNames = $.map($("table#kbtable:first li"), function(item)
	  		{
				var fontName = $(item).text().trim();		

				fontName = fontName.replace(/\:.*$/, '')	// remove anything after a :

				return fontName;
	  		});

	  		completion(fontNames)
		});
}


function dedupFontNames(currentFontNames, fontNames)
{
	return fontNames.filter(function(fontName)
	{
		if ( fontName in currentFontNames )
			return false;

		currentFontNames[fontName] = true;

		return true;
	});
}


function outputFontNames(varName, fontNames, url)
{
	var fontNames = fontNames.map(function(fontName)
	{
		return '@"' + fontName + '"';
	});

	console.log('NSSet *' + varName + ' = [NSSet setWithArray:@[ // ' + fontNames.length.toString() + ' fonts, source: ' + url);
	console.log(fontNames.join(', '));
	console.log("]];");
	console.log("");
}


/*
 * Main
 */


var ios6FontUrl = 'http://support.apple.com/kb/ht5484';
var ios7FontUrl = 'http://support.apple.com/kb/HT5878';


extractFontNames(ios6FontUrl, function(ios6FontNames)
	{
		extractFontNames(ios7FontUrl, function(ios7FontNames)
			{
				var currentFontNames = {};

				ios6FontNames = dedupFontNames(currentFontNames, ios6FontNames);
				ios7FontNames = dedupFontNames(currentFontNames, ios7FontNames);

				outputFontNames('ios6FontNames', ios6FontNames, ios6FontUrl);
				outputFontNames('ios7FontNames', ios7FontNames, ios7FontUrl);
			});
	});

