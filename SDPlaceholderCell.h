//
//  SDTextFieldCell.h
//  SDKit
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 SDPlaceholderCell
 
 Provides a UITextfield inside a UITableViewCell, accessable through the `textField` property.
 
 The textLabel property of UITableViewCell is hidden and the textField is aligned to the far left of the UITableViewCell
 
 The designated initializer for this class is initWithStyle:reuseIdentifier:
 */

@interface SDPlaceholderCell : UITableViewCell

///--------------------------------
/// @name Setting the Placeholder
///--------------------------------

/**
 The textField used to display placeholder text and retrieve user input
 */

@property (nonatomic,retain) UITextField *textField;

@end
