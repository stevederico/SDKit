//
//  SDSettingsController.h
//  SDKit
//
//  Created by Steve Derico on 3/14/13.
//  Copyright (c) 2013 Bixby Apps. All rights reserved.
//
#import <StoreKit/StoreKit.h>
#import "SDKit.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <UIKit/UIKit.h>

@interface SDSettingsController : UITableViewController <MFMailComposeViewControllerDelegate>
@property (nonatomic, strong) NSString *appId;
- (void)sendToAppStore;
@end
