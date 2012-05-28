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


        self.textField.enabled = YES;
        [self.textField setFont:[UIFont fontWithName:@"Helvetica" size:12]];
        self.textField.clearButtonMode = UITextFieldViewModeAlways;
        self.textField.textAlignment = UITextAlignmentLeft;
        self.textField.font = [UIFont systemFontOfSize:17];
        self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.textField.placeholder = @"Placeholder";
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.textField];
    
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
 
    float margin = 5.0f;
    CGRect rect = CGRectMake(margin, 3.0f , self.contentView.bounds.size.width- margin*2, 35);
    [self.textField setFrame:rect];
    [self.textField setBackgroundColor:[UIColor greenColor]];

  
}



@end
