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


@interface UIFont (NTNamedFontsBootstrap)

+(NSDictionary *)builtinFontVersions;

@end


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
    
    if ( additions == 0 && updates == 0 )
    {
        NSLog(@"no new fonts found.");
        
        return ;
    }
    
    NSMutableString *s = [NSMutableString string];
    
    [s appendFormat:@"NSDictionary *builtinFontNames = @{\n"];
    
     for(NSString *fontName in [builtinFontVersions.allKeys sortedArrayUsingSelector:@selector(compare:)])
     {
         [s appendFormat:@"    @\"%@\": @\"%@\",\n", fontName, builtinFontVersions[fontName]];
     }
    
    [s appendFormat:@"    };\n"];
    
    NSLog(@"%d additions, %d updates", additions, updates);
    NSLog(@"* * * * * * * * * * * * * * * * * * *");
    NSLog(@"%@", s);
    NSLog(@"* * * * * * * * * * * * * * * * * * *");
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
    
    NSLog(@"\n%@", h);
}



@end
