//
//  FontInfo.h
//  NTNamedFontsSample
//
//  Created by Ethan Nagel on 3/13/14.
//  Copyright (c) 2014 NagelTech. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FontInfo : NSObject

@property (nonatomic) NSString *familyName;
@property (nonatomic) NSString *fontName;
@property (nonatomic) NSString *version;

+(instancetype)fontInfoWithFamilyName:(NSString *)familyName fontName:(NSString *)fontName version:(NSString *)version;

@end
