//
//  MainViewController.m
//  NTNamedFontsSample
//
//  Created by Ethan Nagel on 3/13/14.
//  Copyright (c) 2014 NagelTech. All rights reserved.
//

#import "MainViewController.h"

#import "FontInfo.h"

typedef enum
{
    FAMILY_NAME_MODE = 0,
    VERSION_MODE,
} MODE;


@interface MainViewController () <UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_allFonts;
    NSArray *_sectionNames;
    NSDictionary *_fontInfosBySectionName;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *modeSegmentedControl;

@property (nonatomic) MODE mode;
@property (nonatomic,readonly) NSArray *allFontInfos;
@property (nonatomic,readonly) NSArray *sectionNames;
@property (nonatomic,readonly) NSDictionary *fontInfosBySectionName;

@end


@interface UIFont (NTNamedFontsPrivate)

+(NSDictionary *)builtinFontVersions;

@end


@implementation MainViewController


- (id)init
{
    self = [super initWithNibName:NSStringFromClass(self.class) bundle:nil];
    
    if (self)
    {
    }
    
    return self;
}


#pragma mark - Data Model


-(void)setMode:(MODE)mode
{
    _sectionNames = nil;
    _fontInfosBySectionName = nil;
    _mode = mode;
}


-(NSArray *)allFontInfos
{
    if ( !_allFonts )
    {
        NSMutableArray *allFonts = [NSMutableArray array];
        NSDictionary *builtinFontVersions = [UIFont builtinFontVersions];
        
        for(NSString *familyName in [[UIFont familyNames] sortedArrayUsingSelector:@selector(compare:)])
        {
            for(NSString *fontName in [[UIFont fontNamesForFamilyName:familyName] sortedArrayUsingSelector:@selector(compare:)])
            {
                NSString *version = builtinFontVersions[fontName];
                
                if ( !version )
                    version = @"-Custom-";
                else
                    version = [NSString stringWithFormat:@"iOS %@+", version];
                
                [allFonts addObject:[FontInfo fontInfoWithFamilyName:familyName fontName:fontName version:version]];
            }
        }
        
        _allFonts = [allFonts copy];
    }
    
    return _allFonts;
}


-(NSArray *)sectionNames
{
    if ( !_sectionNames )
    {
        NSMutableSet *sectionNames = [NSMutableSet set];
        
        for(FontInfo *fontInfo in self.allFontInfos)
        {
            NSString *sectionName = (self.mode==FAMILY_NAME_MODE) ? fontInfo.familyName : fontInfo.version;
            
            [sectionNames addObject:sectionName];
        }
        
        _sectionNames = [sectionNames.allObjects sortedArrayUsingSelector:@selector(compare:)];
    }
    
    return _sectionNames;
}


-(NSDictionary *)fontInfosBySectionName
{
    if ( !_fontInfosBySectionName )
    {
        NSMutableDictionary *fontInfosBySectionName = [NSMutableDictionary dictionary];
        
        for(FontInfo *fontInfo in self.allFontInfos)
        {
            NSString *sectionName = (self.mode==FAMILY_NAME_MODE) ? fontInfo.familyName : fontInfo.version;
            
            NSMutableArray *fontInfos = fontInfosBySectionName[sectionName];
            
            if ( !fontInfos )
            {
                fontInfos = [NSMutableArray array];
                fontInfosBySectionName[sectionName] = fontInfos;
            }
            
            [fontInfos addObject:fontInfo];
        }
        
        for(NSString *sectionName in fontInfosBySectionName.allKeys)
        {
            NSMutableArray *fontInfos = fontInfosBySectionName[sectionName];
            
            fontInfosBySectionName[sectionName] = [fontInfos sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"fontName" ascending:YES]]];
        }
        
        _fontInfosBySectionName = [fontInfosBySectionName copy];
    }
    
    return _fontInfosBySectionName;
}


#pragma mark - UIViewController overrides


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"NTNamedFonts Sample";
}


#pragma mark - IBActions


- (IBAction)modeSegmentedControlChanged:(id)sender
{
    self.mode = (MODE)self.modeSegmentedControl.selectedSegmentIndex;
    
    [self.tableView reloadData];
    
    [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:NO];
}


#pragma mark - UITableViewDataSource/Delegate


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionNames.count;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = self.sectionNames[section];

    return sectionName;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *sectionName = self.sectionNames[section];
    NSArray *fontInfos = self.fontInfosBySectionName[sectionName];
    
    return fontInfos.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *sectionName = self.sectionNames[indexPath.section];
    NSArray *fontInfos = self.fontInfosBySectionName[sectionName];
    FontInfo *fontInfo = fontInfos[indexPath.row];
    
    NSString *reuseIdentifier = @"default";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    if ( !cell )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
        cell.textLabel.font = [UIFont robotoRegularOfSize:14.0]; // custom font
        cell.detailTextLabel.textColor = [UIColor blueColor];
        cell.detailTextLabel.font = [UIFont avenirBookOfSize:12.0]; // builtin font
    }
    
    cell.textLabel.text = fontInfo.fontName;
    cell.detailTextLabel.text = (self.mode == FAMILY_NAME_MODE) ? fontInfo.version : fontInfo.familyName;
    
    return cell;
}


@end
