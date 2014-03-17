//
//  NTNamedFontsBootstrap.h
//  NTNamedFontsSample
//
//  Created by Ethan Nagel on 3/11/14.
//  Copyright (c) 2014 NagelTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NTNamedFontsBootstrap : NSObject

+(void)updateBuiltinFontVersionsWithVersion:(NSString *)iosVersion;
+(void)buildHeader;

@end
