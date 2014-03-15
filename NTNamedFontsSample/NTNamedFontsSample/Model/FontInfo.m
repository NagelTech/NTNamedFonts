//
//  FontInfo.m
//  NTNamedFontsSample
//
//  Created by Ethan Nagel on 3/13/14.
//  Copyright (c) 2014 NagelTech. All rights reserved.
//

#import "FontInfo.h"


@implementation FontInfo


+(instancetype)fontInfoWithFamilyName:(NSString *)familyName fontName:(NSString *)fontName version:(NSString *)version
{
    FontInfo *fontInfo = [[self alloc] init];
    
    fontInfo.familyName = familyName;
    fontInfo.fontName = fontName;
    fontInfo.version = version;
    
    return fontInfo;
}


@end
