//
//  SDSwitchCell.m
//  SDKIT
//
//  Created by Steve Derico on 9/22/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import "SDSwitchCell.h"

#define MAIN_FONT_SIZE 16.0
#define LEFT_COLUMN_OFFSET 10.0

@implementation SDSwitchCell
@synthesize cellSwitch = _cellSwitch;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.cellSwitch = [[[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 100, 50)] autorelease];
        self.accessoryView=self.cellSwitch;
        
        
    }
    return self;
}





- (void) dealloc {
    
    [_cellSwitch release];

    [super dealloc];
}

@end
