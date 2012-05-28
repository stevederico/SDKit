//
//  SDTextFieldCell.m
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//


#import "SDLabelCell.h"


@implementation SDLabelCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.textLabel setBackgroundColor:[UIColor clearColor]];
        self.textLabel.adjustsFontSizeToFitWidth = YES;
        [self.textLabel setHighlightedTextColor:[UIColor whiteColor]];

        self.detailTextLabel.textAlignment = UITextAlignmentRight;
        [self.detailTextLabel setHighlightedTextColor:[UIColor whiteColor]];
        [self.detailTextLabel setBackgroundColor:[UIColor clearColor]];
        [self.detailTextLabel setAdjustsFontSizeToFitWidth:YES];
        
        [self.contentView addSubview:self.detailTextLabel];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    CGFloat margin = self.bounds.size.height * .20;

    CGFloat textWidth = [self.detailTextLabel.text sizeWithFont:self.detailTextLabel.font].width;
    
    CGRect labelRect = CGRectMake(self.contentView.bounds.size.width -margin - textWidth, 
                                  self.contentView.bounds.origin.y,
                                  textWidth ,
                                  self.contentView.bounds.size.height );
    
    CGRect rect = CGRectMake(margin,
                             self.contentView.bounds.origin.y,
                             self.contentView.bounds.size.width -labelRect.size.width,
                             self.contentView.bounds.size.height );
    
    [self.textLabel setFrame:rect];
    [self.textLabel setTextAlignment:UITextAlignmentLeft];
    [self.detailTextLabel setFrame:labelRect];

    
    
    [self.detailTextLabel setTextAlignment:UITextAlignmentRight];
    


  
}


@end
