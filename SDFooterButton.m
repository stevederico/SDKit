//
//  SDFooterButton.m
//  hackerNews
//
//  Created by Stephen Derico on 1/7/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "SDFooterButton.h"

@implementation SDFooterButton
@synthesize button = _button;
@synthesize delegate = _delegate;
- (id)init {
    self = [super initWithFrame:CGRectMake(0, 0, 320, 175)];
    if (self) {
       
            
            [self  setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
            [self setAutoresizesSubviews:YES];
            [self setUserInteractionEnabled:YES];
            self.hidden = NO;
            self.multipleTouchEnabled = NO;
            self.opaque = NO;
            self.contentMode = UIViewContentModeScaleToFill;
            
            self.button= [UIButton buttonWithType:UIButtonTypeRoundedRect];
             self.button.frame = CGRectMake(10,15, 302, 50);
          
            [ self.button setTitle:@"Send Feedback" forState:UIControlStateNormal];
            [ self.button setEnabled:YES];
            [ self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [ self.button setBackgroundImage:[UIImage imageNamed:@"gray_button.png"] forState:UIControlStateNormal];
             self.button.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:23];
            [self.button addTarget:self action:@selector(pressed) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];

  
     [self addSubview: self.button];


}

- (void)pressed{

    [self.delegate footerButtonTapped];

}


@end
