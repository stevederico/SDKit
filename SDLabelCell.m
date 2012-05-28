//
//  SDTextFieldCell.m
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//


#import "SDLabelCell.h"

#define CellTextFieldWidth 200.0
#define MarginBetweenControls self.bounds.size.width/40

@implementation SDLabelCell
@synthesize label = _label;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.textLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
        [self.textLabel setBackgroundColor:[UIColor clearColor]];
        [self.textLabel setTextColor:[UIColor darkGrayColor]];
        self.textLabel.numberOfLines = 1;
        self.textLabel.adjustsFontSizeToFitWidth = YES;
        [self.textLabel setHighlightedTextColor:[UIColor whiteColor]];

        self.label = [[UILabel alloc] init];
        self.label.textAlignment = UITextAlignmentRight;
        self.label.font = [UIFont fontWithName:@"Helvetica" size:20];
        self.label.textColor = [UIColor lightGrayColor];
        [self.label setHighlightedTextColor:[UIColor whiteColor]];
        [self.label setBackgroundColor:[UIColor clearColor]];
        [self.label setAdjustsFontSizeToFitWidth:YES];
        
        [self.contentView addSubview:self.label];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    CGFloat margin = 10.0f;
    CGRect rect = CGRectMake(margin, -3.0f, self.bounds.size.width - margin*2, 50.0f );
    [self.textLabel setFrame:rect];
    [self.textLabel setTextAlignment:UITextAlignmentLeft];
    
    CGFloat textWidth =  [self.label.text sizeWithFont:self.label.font].width;
    CGRect labelRect = CGRectMake(self.bounds.size.width - margin*3 - textWidth  , -3.0f, textWidth , 50.0f );
    [self.label setFrame:labelRect];
    [self.label setTextAlignment:UITextAlignmentRight];
    


  
}


@end
