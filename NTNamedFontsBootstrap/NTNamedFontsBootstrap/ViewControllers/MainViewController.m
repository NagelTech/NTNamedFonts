//
//  MainViewController.m
//  NTNamedFontsBootstrap
//
//  Created by Ethan Nagel on 3/15/14.
//  Copyright (c) 2014 NagelTech. All rights reserved.
//

#import "MainViewController.h"

#import "NTNamedFontsBootstrap.h"


@interface MainViewController ()

@property (unsafe_unretained, nonatomic) IBOutlet UITextField *versionTextField;

@end


@implementation MainViewController


- (id)init
{
    self = [super initWithNibName:NSStringFromClass(self.class) bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - UIViewController Overrides


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"NTNamedFonts Bootstrap";
    
    NSString *version = [UIDevice currentDevice].systemVersion;
    
    if ( version.length > 3 )
        version = [version substringToIndex:3];
    
    self.versionTextField.text = version;
}


#pragma mark - IBActions


- (IBAction)doBuildHeader:(id)sender
{
    [NTNamedFontsBootstrap buildHeader];
}



- (IBAction)doUpdateBuiltinFonts:(id)sender
{
    [NTNamedFontsBootstrap updateBuiltinFontVersionsWithVersion:self.versionTextField.text];
}


@end
