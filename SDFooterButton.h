//
//  SDFooterButton.h
//  hackerNews
//
//  Created by Stephen Derico on 1/7/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SDFooterButtonDelegate <NSObject>

-(void)footerButtonTapped;

@end


@interface SDFooterButton : UIView
@property (nonatomic, retain) UIButton *button;
@property (nonatomic, retain) id delegate;
@end
