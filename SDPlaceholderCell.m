//
//  SDTextFieldCell.m
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//


#import "SDPlaceholderCell.h"

#define CellTextFieldWidth 200.0
#define MarginBetweenControls self.bounds.size.width/40

@implementation SDPlaceholderCell
@synthesize textField = _textField;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textField = [[[UITextField alloc] init]autorelease];
        self.textField.clearsOnBeginEditing = NO;
        self.textField.enabled = YES;
        [self.textLabel setFont:[UIFont fontWithName:@"Helvetica" size:12]];
        self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textField.textAlignment = UITextAlignmentLeft;
        self.textField.font = [UIFont systemFontOfSize:17];
        self.textField.returnKeyType = UIReturnKeyDefault;
        self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        
        [self.contentView addSubview:self.textField];
    
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
 
    float i = (self.bounds.size.width/32);
    CGRect rect2 = CGRectMake( (int)i, (int)self.bounds.size.height/8 , (int)i*28, 35);
    [self.textField setFrame:rect2];
     self.selectionStyle = UITableViewCellSelectionStyleNone;

  
}



- (void) dealloc {
    
   [_textField release];
    _textField = nil;

    [super dealloc];
}

@end
