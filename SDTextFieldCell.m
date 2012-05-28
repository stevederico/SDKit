//
//  SDTextFieldCell.m
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//


#import "SDTextFieldCell.h"

#define CellTextFieldWidth 200.0
#define MarginBetweenControls self.bounds.size.width/40

@implementation SDTextFieldCell
@synthesize textField = _textField;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textField = [[UITextField alloc] init];
        self.textField.clearsOnBeginEditing = NO;
        self.textField.enabled = YES;
        [self.textLabel setFont:[UIFont fontWithName:@"Helvetica" size:12]];
        self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textField.textAlignment = UITextAlignmentLeft;
        self.textField.font = [UIFont systemFontOfSize:17];
        self.textField.returnKeyType = UIReturnKeyDone;
        self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.textField.placeholder = @"Placeholder";
        [self.contentView addSubview:self.textField];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
   
    float i = (self.bounds.size.width/32);
    
    CGRect rect = CGRectMake((int)i, (int) self.bounds.size.height/4, (int)i*8, (int)25.0);
    [self.textLabel setFrame:rect];
//    self.textLabel.backgroundColor = [UIColor greenColor];
    
    CGRect rect2 = CGRectMake( (int)i*9, (int)self.bounds.size.height/4 , (int)i*20, (int)25.0);
    [self.textField setFrame:rect2];
//     self.textField.backgroundColor = [UIColor redColor];
     self.selectionStyle = UITableViewCellSelectionStyleNone;

  
}





@end
