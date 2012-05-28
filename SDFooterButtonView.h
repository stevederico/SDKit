//
//  SDFooterButton.h
//  hackerNews
//
//  Created by Stephen Derico on 1/7/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    SDFooterButtonStyleGreen,
    SDFooterButtonStyleGray,
    SDFooterButtonStyleRed,
} SDFooterButtonStyle;

@interface SDFooterButtonView : UIView
@property (nonatomic, retain) UIButton *button;
- (id)initWithStyle:(SDFooterButtonStyle)style;
@end
