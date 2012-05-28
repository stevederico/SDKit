//
//  SDPatternCell.h
//  HostessPro
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import "SDTextFieldCell.h"
#import <UIKit/UIKit.h>

@interface SDPatternCell : UITableViewCell
@property (nonatomic, strong) UIColor *firstColor;
@property (nonatomic, strong) UIColor *secondColor;

- (id)initWithFirstColor:(UIColor*)firstColor andSecondColor:(UIColor*)secondColor andReuseIdentifier:(NSString*)reuseIdentifier;
@end
