//
//  SDSmoothCell.m
//  PhotoUp
//
//  Created by Stephen Derico on 1/4/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "SDSmoothCell.h"

@implementation SDSmoothCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
          [self.imageView setBounds:CGRectMake(5, 5, 45, 45)];
        	[self setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.imageView setBounds:CGRectMake(5, 5, 45, 45)];

    // Configure the view for the selected state
    self.backgroundColor = [UIColor colorWithRed:226.0/255.0 green:229.0/255.0 blue:234.0/255.0 alpha:1.0];
    self.textLabel.textColor =  [UIColor colorWithRed:53.0/255.0 green:53.0/255.0 blue:53.0/255.0 alpha:1.0];
  
    self.selectionStyle = UITableViewCellSelectionStyleGray;
    
    CALayer *l = [self.imageView layer];
    [l setMasksToBounds:YES];
    [l setCornerRadius:7.0];
    
    // You can even add a border
    [l setBorderWidth:.25];
    [l setBorderColor:[[UIColor blackColor] CGColor]];
    
}

@end
