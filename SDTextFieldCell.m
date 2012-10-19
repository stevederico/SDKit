//
//  SDTextFieldCell.m
//  SDKit
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//


#import "SDTextFieldCell.h"

@implementation SDTextFieldCell
@synthesize textField = _textField;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textField = [[UITextField alloc] init];
        self.textField.clearsOnBeginEditing = NO;
        self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textField.textAlignment = NSTextAlignmentRight;
        self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self.contentView addSubview:self.textField];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    CGFloat margin = self.contentView.bounds.size.width *.05;
    CGFloat textWidth = self.contentView.bounds.size.width *.3;
    
    CGRect labelRect = CGRectMake(self.contentView.bounds.origin.x + margin, 
                                  self.contentView.bounds.origin.y,
                                  textWidth,
                                  self.contentView.bounds.size.height );
    
    
    CGRect fieldRect = CGRectMake(textWidth + margin , 
                                  self.contentView.bounds.origin.y,
                                  self.contentView.bounds.size.width - textWidth -margin ,
                                  self.contentView.bounds.size.height );
    

    

    [self.textField setFrame:fieldRect];
    [self.textLabel setFrame:labelRect];
    [self.textField setTextAlignment:NSTextAlignmentRight];

}

@end
