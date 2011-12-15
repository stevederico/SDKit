//
//  SDPatternCell.m
//  HostessPro
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import "SDPatternCell.h"

@implementation SDPatternCell

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
       
    }
    
    return self;
}


-(void)drawRect:(CGRect)rect  {
    [super drawRect:rect];
    
    if ( [[(UITableView*)[self superview] indexPathForCell:self] row] % 2) {
        [self.contentView setBackgroundColor:[UIColor colorWithRed:173.0f/255.0f green:173.0f/255.0f blue:176.0f/255.0f alpha:1.0f]];
    } else {
        [self.contentView setBackgroundColor:[UIColor colorWithRed:210.0f/255.0f green:210.0f/255.0f blue:216.0f/255.0f alpha:1.0f]]; 
    }
    
    self.selectionStyle = UITableViewCellSelectionStyleGray;
    self.textLabel.textColor  = [UIColor blackColor];
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.textColor = [UIColor blackColor];
    self.textLabel.shadowColor = [UIColor whiteColor];
    self.textLabel.shadowOffset = CGSizeMake(0.0, 1.0);
    self.textLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16.0];
    self.textLabel.lineBreakMode = UILineBreakModeWordWrap;
    self.textLabel.numberOfLines = 0;

}

@end
