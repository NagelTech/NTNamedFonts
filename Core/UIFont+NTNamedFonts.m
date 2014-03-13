/*
 * UIFont+NTNamedFonts.m
 *
 */


#import <objc/runtime.h>


@implementation UIFont (NTNamedFonts)


#pragma mark - Helper methods


+(NSString *)selectorNameForFontName:(NSString *)fontName
{
    fontName = [fontName stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    return [NSString stringWithFormat:@"%c%@OfSize:", tolower([fontName characterAtIndex:0]), [fontName substringFromIndex:1]];
}


+(NSString *)fontNameForSelectorName:(NSString *)selectorName
{
    // We need to create a lookup table to do this...
    
    static NSDictionary *selectorNamesToFontNames;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
    {
        NSMutableDictionary *d = [NSMutableDictionary dictionary];
        
        for(NSString *familyName in [UIFont familyNames])
        {
            for(NSString *fontName in [UIFont fontNamesForFamilyName:familyName])
            {
                d[[self selectorNameForFontName:fontName]] = fontName;
            }
        }
        
        selectorNamesToFontNames = [d copy];
    });

    return selectorNamesToFontNames[selectorName];
}


#pragma mark - Dynamic method support


static id createNamedFontIMP(Class class, SEL _cmd, CGFloat size)
{
    NSString *selectorName = NSStringFromSelector(_cmd);
    NSString *fontName = [class fontNameForSelectorName:selectorName];
    
    return [class fontWithName:fontName size:size];
}


+(BOOL)resolveClassMethod:(SEL)sel
{
    NSString *selectorName = NSStringFromSelector(sel);
    NSString *fontName = [self fontNameForSelectorName:selectorName];
    
    if ( !fontName )
        return [super resolveClassMethod:sel];
    
    Class metaClass = object_getClass(self);

    class_addMethod(metaClass, sel, (IMP)createNamedFontIMP, "@#:f");

    return YES;
}


#pragma mark - Code Generator to aid in creating UIFont+CustomFonts.h


#ifdef DEBUG


+(NSDictionary *)builtinFontVersions    // Generated by NTNamedFontBuilder
{
    static NSDictionary *builtinFontVersions = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
                  {
                      builtinFontVersions =
                      @{
                        @"AcademyEngravedLetPlain": @"6.0",
                        @"AlNile": @"7.0",
                        @"AlNile-Bold": @"7.0",
                        @"AmericanTypewriter": @"6.0",
                        @"AmericanTypewriter-Bold": @"6.0",
                        @"AmericanTypewriter-Condensed": @"6.0",
                        @"AmericanTypewriter-CondensedBold": @"6.0",
                        @"AmericanTypewriter-CondensedLight": @"6.0",
                        @"AmericanTypewriter-Light": @"6.0",
                        @"AppleColorEmoji": @"6.0",
                        @"AppleSDGothicNeo-Bold": @"6.0",
                        @"AppleSDGothicNeo-Light": @"7.0",
                        @"AppleSDGothicNeo-Medium": @"6.0",
                        @"AppleSDGothicNeo-Regular": @"7.0",
                        @"AppleSDGothicNeo-SemiBold": @"7.0",
                        @"AppleSDGothicNeo-Thin": @"7.0",
                        @"Arial-BoldItalicMT": @"6.0",
                        @"Arial-BoldMT": @"6.0",
                        @"Arial-ItalicMT": @"6.0",
                        @"ArialHebrew": @"6.0",
                        @"ArialHebrew-Bold": @"6.0",
                        @"ArialHebrew-Light": @"7.0",
                        @"ArialMT": @"6.0",
                        @"ArialRoundedMTBold": @"6.0",
                        @"Avenir-Black": @"6.0",
                        @"Avenir-BlackOblique": @"6.0",
                        @"Avenir-Book": @"6.0",
                        @"Avenir-BookOblique": @"6.0",
                        @"Avenir-Heavy": @"6.0",
                        @"Avenir-HeavyOblique": @"6.0",
                        @"Avenir-Light": @"6.0",
                        @"Avenir-LightOblique": @"6.0",
                        @"Avenir-Medium": @"6.0",
                        @"Avenir-MediumOblique": @"6.0",
                        @"Avenir-Oblique": @"6.0",
                        @"Avenir-Roman": @"6.0",
                        @"AvenirNext-Bold": @"6.0",
                        @"AvenirNext-BoldItalic": @"6.0",
                        @"AvenirNext-DemiBold": @"6.0",
                        @"AvenirNext-DemiBoldItalic": @"6.0",
                        @"AvenirNext-Heavy": @"6.0",
                        @"AvenirNext-HeavyItalic": @"6.0",
                        @"AvenirNext-Italic": @"6.0",
                        @"AvenirNext-Medium": @"6.0",
                        @"AvenirNext-MediumItalic": @"6.0",
                        @"AvenirNext-Regular": @"6.0",
                        @"AvenirNext-UltraLight": @"6.0",
                        @"AvenirNext-UltraLightItalic": @"6.0",
                        @"AvenirNextCondensed-Bold": @"6.0",
                        @"AvenirNextCondensed-BoldItalic": @"6.0",
                        @"AvenirNextCondensed-DemiBold": @"6.0",
                        @"AvenirNextCondensed-DemiBoldItalic": @"6.0",
                        @"AvenirNextCondensed-Heavy": @"6.0",
                        @"AvenirNextCondensed-HeavyItalic": @"6.0",
                        @"AvenirNextCondensed-Italic": @"6.0",
                        @"AvenirNextCondensed-Medium": @"6.0",
                        @"AvenirNextCondensed-MediumItalic": @"6.0",
                        @"AvenirNextCondensed-Regular": @"6.0",
                        @"AvenirNextCondensed-UltraLight": @"6.0",
                        @"AvenirNextCondensed-UltraLightItalic": @"6.0",
                        @"BanglaSangamMN": @"6.0",
                        @"BanglaSangamMN-Bold": @"6.0",
                        @"Baskerville": @"6.0",
                        @"Baskerville-Bold": @"6.0",
                        @"Baskerville-BoldItalic": @"6.0",
                        @"Baskerville-Italic": @"6.0",
                        @"Baskerville-SemiBold": @"6.0",
                        @"Baskerville-SemiBoldItalic": @"6.0",
                        @"BodoniOrnamentsITCTT": @"6.0",
                        @"BodoniSvtyTwoITCTT-Bold": @"6.0",
                        @"BodoniSvtyTwoITCTT-Book": @"6.0",
                        @"BodoniSvtyTwoITCTT-BookIta": @"6.0",
                        @"BodoniSvtyTwoOSITCTT-Bold": @"6.0",
                        @"BodoniSvtyTwoOSITCTT-Book": @"6.0",
                        @"BodoniSvtyTwoOSITCTT-BookIt": @"6.0",
                        @"BodoniSvtyTwoSCITCTT-Book": @"6.0",
                        @"BradleyHandITCTT-Bold": @"6.0",
                        @"ChalkboardSE-Bold": @"6.0",
                        @"ChalkboardSE-Light": @"6.0",
                        @"ChalkboardSE-Regular": @"6.0",
                        @"Chalkduster": @"6.0",
                        @"Cochin": @"6.0",
                        @"Cochin-Bold": @"6.0",
                        @"Cochin-BoldItalic": @"6.0",
                        @"Cochin-Italic": @"6.0",
                        @"Copperplate": @"6.0",
                        @"Copperplate-Bold": @"6.0",
                        @"Copperplate-Light": @"6.0",
                        @"Courier": @"6.0",
                        @"Courier-Bold": @"6.0",
                        @"Courier-BoldOblique": @"6.0",
                        @"Courier-Oblique": @"6.0",
                        @"CourierNewPS-BoldItalicMT": @"6.0",
                        @"CourierNewPS-BoldMT": @"6.0",
                        @"CourierNewPS-ItalicMT": @"6.0",
                        @"CourierNewPSMT": @"6.0",
                        @"DINAlternate-Bold": @"7.0",
                        @"DINCondensed-Bold": @"7.0",
                        @"Damascus": @"7.0",
                        @"DamascusBold": @"7.0",
                        @"DamascusMedium": @"7.0",
                        @"DamascusSemiBold": @"7.0",
                        @"DevanagariSangamMN": @"6.0",
                        @"DevanagariSangamMN-Bold": @"6.0",
                        @"Didot": @"6.0",
                        @"Didot-Bold": @"6.0",
                        @"Didot-Italic": @"6.0",
                        @"DiwanMishafi": @"7.0",
                        @"EuphemiaUCAS": @"6.0",
                        @"EuphemiaUCAS-Bold": @"6.0",
                        @"EuphemiaUCAS-Italic": @"6.0",
                        @"Farah": @"7.0",
                        @"Futura-CondensedExtraBold": @"6.0",
                        @"Futura-CondensedMedium": @"6.0",
                        @"Futura-Medium": @"6.0",
                        @"Futura-MediumItalic": @"6.0",
                        @"GeezaPro": @"6.0",
                        @"GeezaPro-Bold": @"6.0",
                        @"GeezaPro-Light": @"7.0",
                        @"Georgia": @"6.0",
                        @"Georgia-Bold": @"6.0",
                        @"Georgia-BoldItalic": @"6.0",
                        @"Georgia-Italic": @"6.0",
                        @"GillSans": @"6.0",
                        @"GillSans-Bold": @"6.0",
                        @"GillSans-BoldItalic": @"6.0",
                        @"GillSans-Italic": @"6.0",
                        @"GillSans-Light": @"6.0",
                        @"GillSans-LightItalic": @"6.0",
                        @"GujaratiSangamMN": @"6.0",
                        @"GujaratiSangamMN-Bold": @"6.0",
                        @"GurmukhiMN": @"6.0",
                        @"GurmukhiMN-Bold": @"6.0",
                        @"Helvetica": @"6.0",
                        @"Helvetica-Bold": @"6.0",
                        @"Helvetica-BoldOblique": @"6.0",
                        @"Helvetica-Light": @"6.0",
                        @"Helvetica-LightOblique": @"6.0",
                        @"Helvetica-Oblique": @"6.0",
                        @"HelveticaNeue": @"6.0",
                        @"HelveticaNeue-Bold": @"6.0",
                        @"HelveticaNeue-BoldItalic": @"6.0",
                        @"HelveticaNeue-CondensedBlack": @"6.0",
                        @"HelveticaNeue-CondensedBold": @"6.0",
                        @"HelveticaNeue-Italic": @"6.0",
                        @"HelveticaNeue-Light": @"6.0",
                        @"HelveticaNeue-LightItalic": @"6.0",
                        @"HelveticaNeue-Medium": @"6.0",
                        @"HelveticaNeue-MediumItalic": @"7.0",
                        @"HelveticaNeue-Thin": @"7.0",
                        @"HelveticaNeue-ThinItalic": @"7.0",
                        @"HelveticaNeue-UltraLight": @"6.0",
                        @"HelveticaNeue-UltraLightItalic": @"6.0",
                        @"HiraKakuProN-W3": @"6.0",
                        @"HiraKakuProN-W6": @"6.0",
                        @"HiraMinProN-W3": @"6.0",
                        @"HiraMinProN-W6": @"6.0",
                        @"HoeflerText-Black": @"6.0",
                        @"HoeflerText-BlackItalic": @"6.0",
                        @"HoeflerText-Italic": @"6.0",
                        @"HoeflerText-Regular": @"6.0",
                        @"IowanOldStyle-Bold": @"7.0",
                        @"IowanOldStyle-BoldItalic": @"7.0",
                        @"IowanOldStyle-Italic": @"7.0",
                        @"IowanOldStyle-Roman": @"7.0",
                        @"Kailasa": @"6.0",
                        @"Kailasa-Bold": @"6.0",
                        @"KannadaSangamMN": @"6.0",
                        @"KannadaSangamMN-Bold": @"6.0",
                        @"MalayalamSangamMN": @"6.0",
                        @"MalayalamSangamMN-Bold": @"6.0",
                        @"Marion-Bold": @"6.0",
                        @"Marion-Italic": @"6.0",
                        @"Marion-Regular": @"6.0",
                        @"MarkerFelt-Thin": @"6.0",
                        @"MarkerFelt-Wide": @"6.0",
                        @"Menlo-Bold": @"7.0",
                        @"Menlo-BoldItalic": @"7.0",
                        @"Menlo-Italic": @"7.0",
                        @"Menlo-Regular": @"7.0",
                        @"Noteworthy-Bold": @"6.0",
                        @"Noteworthy-Light": @"6.0",
                        @"Optima-Bold": @"6.0",
                        @"Optima-BoldItalic": @"6.0",
                        @"Optima-ExtraBlack": @"6.0",
                        @"Optima-Italic": @"6.0",
                        @"Optima-Regular": @"6.0",
                        @"OriyaSangamMN": @"6.0",
                        @"OriyaSangamMN-Bold": @"6.0",
                        @"Palatino-Bold": @"6.0",
                        @"Palatino-BoldItalic": @"6.0",
                        @"Palatino-Italic": @"6.0",
                        @"Palatino-Roman": @"6.0",
                        @"Papyrus": @"6.0",
                        @"Papyrus-Condensed": @"6.0",
                        @"PartyLetPlain": @"6.0",
                        @"STHeitiSC-Light": @"6.0",
                        @"STHeitiSC-Medium": @"6.0",
                        @"STHeitiTC-Light": @"6.0",
                        @"STHeitiTC-Medium": @"6.0",
                        @"SavoyeLetPlain": @"7.0",
                        @"SinhalaSangamMN": @"6.0",
                        @"SinhalaSangamMN-Bold": @"6.0",
                        @"SnellRoundhand": @"6.0",
                        @"SnellRoundhand-Black": @"6.0",
                        @"SnellRoundhand-Bold": @"6.0",
                        @"Superclarendon-Black": @"7.0",
                        @"Superclarendon-BlackItalic": @"7.0",
                        @"Superclarendon-Bold": @"7.0",
                        @"Superclarendon-BoldItalic": @"7.0",
                        @"Superclarendon-Italic": @"7.0",
                        @"Superclarendon-Light": @"7.0",
                        @"Superclarendon-LightItalic": @"7.0",
                        @"Superclarendon-Regular": @"7.0",
                        @"Symbol": @"6.0",
                        @"TamilSangamMN": @"6.0",
                        @"TamilSangamMN-Bold": @"6.0",
                        @"TeluguSangamMN": @"6.0",
                        @"TeluguSangamMN-Bold": @"6.0",
                        @"Thonburi": @"6.0",
                        @"Thonburi-Bold": @"6.0",
                        @"Thonburi-Light": @"7.0",
                        @"TimesNewRomanPS-BoldItalicMT": @"6.0",
                        @"TimesNewRomanPS-BoldMT": @"6.0",
                        @"TimesNewRomanPS-ItalicMT": @"6.0",
                        @"TimesNewRomanPSMT": @"6.0",
                        @"Trebuchet-BoldItalic": @"6.0",
                        @"TrebuchetMS": @"6.0",
                        @"TrebuchetMS-Bold": @"6.0",
                        @"TrebuchetMS-Italic": @"6.0",
                        @"Verdana": @"6.0",
                        @"Verdana-Bold": @"6.0",
                        @"Verdana-BoldItalic": @"6.0",
                        @"Verdana-Italic": @"6.0",
                        @"ZapfDingbatsITC": @"6.0",
                        @"Zapfino": @"6.0",
                        };
                  });
    
    return builtinFontVersions;
}


+(NSSet *)builtinSelectorNames
{
    static NSSet *builtinSelectorNames;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
    {
        NSMutableSet *set = [NSMutableSet set];
        
        for(NSString *fontName in [self builtinFontVersions].allKeys)
        {
            [set addObject:[self selectorNameForFontName:fontName]];
        }
        
        builtinSelectorNames = [set copy];
    });
    
    return builtinSelectorNames;
}


+(NSMutableSet *)existingSelectorNames
{
    unsigned int numMethods;
    Method *methods = class_copyMethodList(object_getClass([UIFont class]), &numMethods);
    
    NSMutableSet *exisitingSelectorNames = [NSMutableSet set];
    
    for(int index=0; index<numMethods; index++)
    {
        Method method = methods[index];
        
        SEL sel = method_getName(method);
        
        NSString *selectorName = NSStringFromSelector(sel);
        
        if ( ![selectorName hasSuffix:@"OfSize:"] || [selectorName hasPrefix:@"_"] || [selectorName hasSuffix:@"FontOfSize:"] )
            continue ;
        
        [exisitingSelectorNames addObject:selectorName];
    }
    
    free(methods);
    
    return exisitingSelectorNames;
}


+(BOOL)detectCustomFontsShowingAlert:(BOOL)showAlert
{
    // Checks for any new custom fonts, if found will output the new UIFont+CustomFonts.h file
    // and optionally display an UIAlertView
    // Does nothing in non-DEBUG builds
    
    NSMutableString *h = [NSMutableString string];
    
    [h appendString:@"/*\n * UIFont+CustomFonts.h\n *\n */\n\n\n@interface\n"];
    
    NSSet *builtinSelectorNames = [self builtinSelectorNames];
    NSMutableSet *existingSelectorNames = [self existingSelectorNames];
    
    [existingSelectorNames minusSet:builtinSelectorNames];

    NSMutableArray *addedSelectorNames = [NSMutableArray array];
    NSMutableArray *removedSelectorNames = [NSMutableArray array];

    for(NSString *familyName in [[UIFont familyNames] sortedArrayUsingSelector:@selector(compare:)])
    {
        BOOL outputFamilyName = YES;
        
        for(NSString *fontName in [[UIFont fontNamesForFamilyName:familyName] sortedArrayUsingSelector:@selector(compare:)])
        {
            NSString *selectorName = [self selectorNameForFontName:fontName];
            
            if ( [builtinSelectorNames containsObject:selectorName] )
                continue;    // ignore builtin
            
            if ( [existingSelectorNames containsObject:selectorName] )
                [existingSelectorNames removeObject:selectorName];
            
            else
                [addedSelectorNames addObject:selectorName];
            
            if ( outputFamilyName )
            {
                outputFamilyName = NO;
                
                [h appendFormat:@"\n// %@\n\n", familyName];
            }
            
            [h appendFormat:@"+(UIFont *)%@(CGFloat)size;\n", selectorName];
        }
    }
    
    [h appendString:@"\n@end\n"];
    
    [removedSelectorNames addObjectsFromArray:existingSelectorNames.allObjects];
    
    if ( !addedSelectorNames.count && !removedSelectorNames.count )
        return NO; // no changes detected
    
    NSString *message = [NSString stringWithFormat:@"CustomFont changes detected!\nAdded: %@\nRemoved: %@\nThe new header file has been generated to your log.", (addedSelectorNames.count) ? [addedSelectorNames componentsJoinedByString:@", "] : @"(none)", (removedSelectorNames.count) ? [removedSelectorNames componentsJoinedByString:@", "] : @"(none)"];
    
    if ( showAlert )
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"CustomFont changes detected"
                                                            message:message
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }
    NSLog(@"%@", message);
    NSLog(@"* * * * * * * * * * * * * * * * * * *");
    NSLog(@"\n%@\n", h);
    NSLog(@"* * * * * * * * * * * * * * * * * * *");
    
    return YES;
}


#else


+(BOOL)detectCustomFontsShowingAlert:(BOOL)showAlert
{
    return NO;
}


#endif


@end

