//
//  SDTextFieldCell.h
//  SDKIT
//
//  Created by Steve Derico on 9/20/11.
//  Copyright 2011 Bixby Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDTextFieldCell : UITableViewCell {

    UITextField *_textField;
    
}

@property (nonatomic,retain) UITextField *textField;

@end
