//
//  NTNamedFontsBootstrap.m
//  NTNamedFontsSample
//
//  Created by Ethan Nagel on 3/11/14.
//  Copyright (c) 2014 NagelTech. All rights reserved.
//

#import <objc/runtime.h>

#import "NTNamedFontsBootstrap.h"

#import "UIFont+NTNamedFonts.h"



@implementation NTNamedFontsBootstrap


+(void)updateBuiltinFontVersionsWithVersion:(NSString *)iosVersion
{
    // Assumes all fonts are builtin when this is run!
    
    NSMutableDictionary *builtinFontVersions = [[UIFont builtinFontVersions] mutableCopy];
    
    int additions = 0;
    int updates = 0;
    
    for(NSString *familyName in [UIFont familyNames])
    {
        for(NSString *fontName in [UIFont fontNamesForFamilyName:familyName])
        {
            NSString *existingVersion = builtinFontVersions[fontName];
            
            if ( !existingVersion )
                ++additions;
            
            else if ( [existingVersion compare:iosVersion] > 0 )
                ++updates;
            
            else
                continue;   // no change to this item
            
            builtinFontVersions[fontName] = iosVersion;
        }
    }
    
    NSString *message;
    
    if ( updates == 0 && additions == 0 )
    {
        message = @"no changes found. Ah well.";
    }
    
    else
    {
        NSMutableString *s = [NSMutableString string];
        
        [s appendFormat:@"NSDictionary *builtinFontNames = @{\n"];
        
        for(NSString *fontName in [builtinFontVersions.allKeys sortedArrayUsingSelector:@selector(compare:)])
        {
            [s appendFormat:@"    @\"%@\": @\"%@\",\n", fontName, builtinFontVersions[fontName]];
        }
        
        [s appendFormat:@"    };\n"];
        
        NSLog(@"* * * * * * * * * * * * * * * * * * *");
        NSLog(@"%@", s);
        NSLog(@"* * * * * * * * * * * * * * * * * * *");
       message = [NSString stringWithFormat:@"builtinFontNames generated, %d additions, %d updates. Check your log!", additions, updates];
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Bootstrap" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];

    [alertView show];
}


+(void)buildHeader
{
    NSDictionary *builtinFontVersions = [UIFont builtinFontVersions];
    
    NSMutableString *h = [NSMutableString string];
    
    for(NSString *familyName in [[UIFont familyNames] sortedArrayUsingSelector:@selector(compare:)])
    {
        [h appendFormat:@"\n// %@\n\n", familyName];
        
        for(NSString *fontName in [[UIFont fontNamesForFamilyName:familyName] sortedArrayUsingSelector:@selector(compare:)])
        {
            NSString *selectorName = [UIFont selectorNameForFontName:fontName];
            
            NSString *version = builtinFontVersions[fontName];
            
            if ( !version )
            {
                NSLog(@"Warning: Font is not in builtinFontVersions: %@", fontName);
                continue ;
            }
            
            [h appendFormat:@"+(UIFont *)%@(CGFloat)size NS_AVAILABLE_IOS(%@);\n", selectorName, [version stringByReplacingOccurrencesOfString:@"." withString:@"_"]];
        }
    }
    
    NSLog(@"* * * * * * * * * * * * * * * * * * *");
    NSLog(@"%@", h);
    NSLog(@"* * * * * * * * * * * * * * * * * * *");
    
    NSString *message = [NSString stringWithFormat:@"builtin header generated, check your log!"];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Bootstrap" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alertView show];

}



@end
