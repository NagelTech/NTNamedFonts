/*
 * UIFont+NTNamedFonts.h
 *
 */


@interface UIFont (NTNamedFonts)

+(NSString *)selectorNameForFontName:(NSString *)fontName;
+(NSString *)fontNameForSelectorName:(NSString *)selectorName;

+(BOOL)detectCustomFontsShowingAlert:(BOOL)showAlert;

// Academy Engraved LET

+(UIFont *)academyEngravedLetPlainOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Al Nile

+(UIFont *)alNileOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)alNileBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// American Typewriter

+(UIFont *)americanTypewriterOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)americanTypewriterBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)americanTypewriterCondensedOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)americanTypewriterCondensedBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)americanTypewriterCondensedLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)americanTypewriterLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Apple Color Emoji

+(UIFont *)appleColorEmojiOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Apple SD Gothic Neo

+(UIFont *)appleSDGothicNeoBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)appleSDGothicNeoLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)appleSDGothicNeoMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)appleSDGothicNeoRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)appleSDGothicNeoSemiBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)appleSDGothicNeoThinOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Arial

+(UIFont *)arialBoldItalicMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)arialBoldMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)arialItalicMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)arialMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Arial Hebrew

+(UIFont *)arialHebrewOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)arialHebrewBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)arialHebrewLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Arial Rounded MT Bold

+(UIFont *)arialRoundedMTBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Avenir

+(UIFont *)avenirBlackOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirBlackObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirBookOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirBookObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirHeavyOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirHeavyObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirLightObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirMediumObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirRomanOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Avenir Next

+(UIFont *)avenirNextBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextDemiBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextDemiBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextHeavyOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextHeavyItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextMediumItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextUltraLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextUltraLightItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Avenir Next Condensed

+(UIFont *)avenirNextCondensedBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedDemiBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedDemiBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedHeavyOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedHeavyItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedMediumItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedUltraLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)avenirNextCondensedUltraLightItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Bangla Sangam MN

+(UIFont *)banglaSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)banglaSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Baskerville

+(UIFont *)baskervilleOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)baskervilleBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)baskervilleBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)baskervilleItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)baskervilleSemiBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)baskervilleSemiBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Bodoni 72

+(UIFont *)bodoniSvtyTwoITCTTBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)bodoniSvtyTwoITCTTBookOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)bodoniSvtyTwoITCTTBookItaOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Bodoni 72 Oldstyle

+(UIFont *)bodoniSvtyTwoOSITCTTBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)bodoniSvtyTwoOSITCTTBookOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)bodoniSvtyTwoOSITCTTBookItOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Bodoni 72 Smallcaps

+(UIFont *)bodoniSvtyTwoSCITCTTBookOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Bodoni Ornaments

+(UIFont *)bodoniOrnamentsITCTTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Bradley Hand

+(UIFont *)bradleyHandITCTTBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Chalkboard SE

+(UIFont *)chalkboardSEBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)chalkboardSELightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)chalkboardSERegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Chalkduster

+(UIFont *)chalkdusterOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Cochin

+(UIFont *)cochinOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)cochinBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)cochinBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)cochinItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Copperplate

+(UIFont *)copperplateOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)copperplateBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)copperplateLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Courier

+(UIFont *)courierOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)courierBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)courierBoldObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)courierObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Courier New

+(UIFont *)courierNewPSBoldItalicMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)courierNewPSBoldMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)courierNewPSItalicMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)courierNewPSMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// DIN Alternate

+(UIFont *)dINAlternateBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// DIN Condensed

+(UIFont *)dINCondensedBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Damascus

+(UIFont *)damascusOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)damascusBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)damascusMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)damascusSemiBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Devanagari Sangam MN

+(UIFont *)devanagariSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)devanagariSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Didot

+(UIFont *)didotOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)didotBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)didotItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Euphemia UCAS

+(UIFont *)euphemiaUCASOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)euphemiaUCASBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)euphemiaUCASItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Farah

+(UIFont *)farahOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Futura

+(UIFont *)futuraCondensedExtraBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)futuraCondensedMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)futuraMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)futuraMediumItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Geeza Pro

+(UIFont *)geezaProOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)geezaProBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)geezaProLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Georgia

+(UIFont *)georgiaOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)georgiaBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)georgiaBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)georgiaItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Gill Sans

+(UIFont *)gillSansOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gillSansBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gillSansBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gillSansItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gillSansLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gillSansLightItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Gujarati Sangam MN

+(UIFont *)gujaratiSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gujaratiSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Gurmukhi MN

+(UIFont *)gurmukhiMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)gurmukhiMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Heiti SC

+(UIFont *)sTHeitiSCLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)sTHeitiSCMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Heiti TC

+(UIFont *)sTHeitiTCLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)sTHeitiTCMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Helvetica

+(UIFont *)helveticaOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaBoldObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaLightObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaObliqueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Helvetica Neue

+(UIFont *)helveticaNeueOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueCondensedBlackOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueCondensedBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueLightItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueMediumOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueMediumItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)helveticaNeueThinOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)helveticaNeueThinItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)helveticaNeueUltraLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)helveticaNeueUltraLightItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Hiragino Kaku Gothic ProN

+(UIFont *)hiraKakuProNW3OfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)hiraKakuProNW6OfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Hiragino Mincho ProN

+(UIFont *)hiraMinProNW3OfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)hiraMinProNW6OfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Hoefler Text

+(UIFont *)hoeflerTextBlackOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)hoeflerTextBlackItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)hoeflerTextItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)hoeflerTextRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Iowan Old Style

+(UIFont *)iowanOldStyleBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)iowanOldStyleBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)iowanOldStyleItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)iowanOldStyleRomanOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Kailasa

+(UIFont *)kailasaOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)kailasaBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Kannada Sangam MN

+(UIFont *)kannadaSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)kannadaSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Malayalam Sangam MN

+(UIFont *)malayalamSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)malayalamSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Marion

+(UIFont *)marionBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)marionItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)marionRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Marker Felt

+(UIFont *)markerFeltThinOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)markerFeltWideOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Menlo

+(UIFont *)menloBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)menloBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)menloItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)menloRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Mishafi

+(UIFont *)diwanMishafiOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Noteworthy

+(UIFont *)noteworthyBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)noteworthyLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Optima

+(UIFont *)optimaBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)optimaBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)optimaExtraBlackOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)optimaItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)optimaRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Oriya Sangam MN

+(UIFont *)oriyaSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)oriyaSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Palatino

+(UIFont *)palatinoBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)palatinoBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)palatinoItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)palatinoRomanOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Papyrus

+(UIFont *)papyrusOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)papyrusCondensedOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Party LET

+(UIFont *)partyLetPlainOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Savoye LET

+(UIFont *)savoyeLetPlainOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Sinhala Sangam MN

+(UIFont *)sinhalaSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)sinhalaSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Snell Roundhand

+(UIFont *)snellRoundhandOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)snellRoundhandBlackOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)snellRoundhandBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Superclarendon

+(UIFont *)superclarendonBlackOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonBlackItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonLightItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);
+(UIFont *)superclarendonRegularOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Symbol

+(UIFont *)symbolOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Tamil Sangam MN

+(UIFont *)tamilSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)tamilSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Telugu Sangam MN

+(UIFont *)teluguSangamMNOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)teluguSangamMNBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Thonburi

+(UIFont *)thonburiOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)thonburiBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)thonburiLightOfSize:(CGFloat)size NS_AVAILABLE_IOS(7_0);

// Times New Roman

+(UIFont *)timesNewRomanPSBoldItalicMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)timesNewRomanPSBoldMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)timesNewRomanPSItalicMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)timesNewRomanPSMTOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Trebuchet MS

+(UIFont *)trebuchetBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)trebuchetMSOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)trebuchetMSBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)trebuchetMSItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Verdana

+(UIFont *)verdanaOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)verdanaBoldOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)verdanaBoldItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);
+(UIFont *)verdanaItalicOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Zapf Dingbats

+(UIFont *)zapfDingbatsITCOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

// Zapfino

+(UIFont *)zapfinoOfSize:(CGFloat)size NS_AVAILABLE_IOS(6_0);

@end
