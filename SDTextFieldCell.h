//
//  SDTextFieldCell.h
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 SDTextFieldCell
 
 Provides a UITextField inside a UITableViewCell, accessable through the native `textField` property.
 
 The UITextField instance is aligned to the right side of the cell, but UITextField text is aligned to the left.
 
 This class has no SelectionStyle by design, this would interfere with user input.
 
 The designated initializer for this class is initWithStyle:reuseIdentifier:
 */

@interface SDTextFieldCell : UITableViewCell

@property (nonatomic,strong) UITextField *textField;

@end
