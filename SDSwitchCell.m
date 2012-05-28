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


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        UISwitch *item = [[UISwitch alloc]initWithFrame:CGRectZero];
        self.switchItem = item;
        [self.contentView addSubview:self.switchItem];
        
        
    }
    return self;
}

-(void)layoutSubviews {
    
    [super layoutSubviews];


    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.accessoryType = UITableViewCellAccessoryNone;
    CGFloat margin = self.bounds.size.height * .20;
    CGFloat width =  self.switchItem.frame.size.width;
    CGRect rect = CGRectMake(self.bounds.size.width - margin*3 - width  , margin, width , 50.0f );
    NSLog(@"AccessoryView %@",self.accessoryView);
    if (self.accessoryType == UITableViewCellAccessoryDisclosureIndicator||self.accessoryType == UITableViewCellAccessoryCheckmark) {
        rect = CGRectMake(self.bounds.size.width - margin*5 - width  , margin, width , 50.0f );
    }
    
    
    [self.switchItem setFrame:rect];
    
    
    

    
    
}


   


@end
