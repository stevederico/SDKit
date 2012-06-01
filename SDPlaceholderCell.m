//
//  SDTextFieldCell.m
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//


#import "SDPlaceholderCell.h"

@implementation SDPlaceholderCell
@synthesize textField = _textField;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textField = [[UITextField alloc] init];
        self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textField.textAlignment = UITextAlignmentLeft;
        self.textField.placeholder = @"Placeholder";
        self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.textField];
        [self.textLabel setHidden:YES];
    
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
 
    CGFloat margin = self.contentView.bounds.size.height * .10;
    CGFloat height = self.contentView.bounds.size.height;
    CGRect rect = CGRectMake(margin,
                             self.contentView.bounds.origin.y + (self.contentView.bounds.size.height - height)/2,
                             self.contentView.bounds.size.width- margin*2,
                             height);
    [self.textField setFrame:rect];  

}



@end
