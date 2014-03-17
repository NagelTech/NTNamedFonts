NTNamedFonts
============

Extends UIFont with named font constructors so you don't end up hard-coding the font names in your app. Also provides the same functionality for your custom fonts.


Built-in Font Usage
===================

Include UIFont+NTNamedFonts.h in your PCH file. Once it's there you will have autocomplete for any built-in font. You can then set fonts like this:

    self.anyLabel.font = [UIFont avenirBookOfSize:12.0];
    
Additionally each font has an NS_AVAILABLE attribute added (currently supporting iOS 6.0 and iOS 7.0.)


Custom Font Usage
=================

In order to support custom fonts, NTNamedFonts can help you generate the required .h/m files. Simply add the following to your `didFinishLaunchingWithOptions`:

    [UIFont detectCustomFontsShowingAlert:YES];
    
If it detects any custom fonts have been aded or removed it will output the contents of **UIFont+CustomFonts.h** and **UIFont+CustomFonts.m** to the log. Simply copy and paste the contents into your project and you are good to go! `detectCustomFontsShowingAlert:` only does anything in `DEBUG` builds, so you can safely leave this in your code without paying any performance penalty for appstore builds.


Installation
============

This is dead simple. If you are using cocoapods add 'pod NTNamedFonts' to your podfile. If you are doing things old school, add UIFont+NTNamedFonts.h and UIFont+NTNamedFonts.m to your project and enjoy!


Bootstrapping
=============

The NTNamedFontsBootstrap project contains code used to build this project. It detects builtin fonts and builds a map of font names to versions. Additionally, it is used to generate builtin font declarations in UIFont+NTNamedFonts.h

I've mapped the font versions for iOS 6.0 and iOS 7.0. If you are supporting older iOS versions and would like to have the NS_AVAILABLE attribute reflect that version you can use the bootstrap code to help you do that. Run the app and execute `updateBuiltinFontVersionsWithVersion` for the version you are testing with. Copy and paste the output into the `builtinFontVersions` method in **UIFont+NTNamedFonts.m** and then run again, this time running `buildHeader`. Paste those results over the named fonts declatations in **UIFont+NTNamedFonts.h**. The same approach will work to add new fonts when a new version of iOS comes out.

If you go to the trouble, be sure to send me a a pull request. Sharing is caring.
