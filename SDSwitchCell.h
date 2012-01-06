//
//  SDSwitchCell.h
//  
//
//  Created by Steve Derico on 10/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDSmoothCell.h"
@protocol SDSwitchDelegate <NSObject>

@optional
-(void) switchFlipped:(id)sender;

@end
@interface SDSwitchCell : SDSmoothCell {


    UISwitch *_switchItem;
    id <SDSwitchDelegate> _delegate;
}
@property (nonatomic, retain) id <SDSwitchDelegate> delegate;
@property (nonatomic, retain) UISwitch *switchItem;

@end
