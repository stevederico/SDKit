//
//  SDSwitchCell.m
//  
//
//  Created by Steve Derico on 10/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SDSwitchCell.h"

@implementation SDSwitchCell
@synthesize switchItem = _switchItem;
@synthesize delegate = _delegate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        UISwitch   *item = [[UISwitch alloc]initWithFrame:CGRectMake(215.0f, 8.0f, 10.0f, 10.0f)];
        self.switchItem = item;
     
        [item release];
        
        
    }
    return self;
}

-(void)layoutSubviews {
    
    [super layoutSubviews];

 
    [self.switchItem addTarget:self action:@selector(switchFlipped:) forControlEvents:UIControlEventValueChanged];
    [self.contentView addSubview:self.switchItem];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
          self.accessoryType = UITableViewCellAccessoryNone;
}

- (void)switchFlipped:(id)sender {

    [self.delegate switchFlipped:self];

}


- (void)dealloc {
    self.switchItem = nil;
    self.delegate = nil;
    [super dealloc];
}

@end
