//
//  SDSwitchCell.h
//  HostessPro
//
//  Created by Steve Derico on 9/22/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDSwitchCell : UITableViewCell {

    UISwitch *_cellSwitch;

}

//Sorry switch is a keyword and cannot be used for a property name.
@property(nonatomic,retain) UISwitch *cellSwitch;

@end
