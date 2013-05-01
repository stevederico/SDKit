//
//  SDSettingsController.m
//  SDKit
//
//  Created by Steve Derico on 3/14/13.
//  Copyright (c) 2013 Bixby Apps. All rights reserved.
//

#import "SDSettingsController.h"

@interface SDSettingsController (){
    
    NSUserDefaults *prefs;

}

@end

@implementation SDSettingsController

@synthesize appId = _appId;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    prefs = [NSUserDefaults standardUserDefaults];
    
    UIBarButtonItem *closeButton = [[UIBarButtonItem alloc] initWithTitle:@"Close" style:UIBarButtonItemStylePlain target:self action:@selector(close)];

    self.navigationItem.rightBarButtonItem = closeButton;
 
    self.title = @"Settings";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    
 
    


  

   
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    if (indexPath.row==0 && indexPath.section == 0) {

    SDSwitchCell *cell = (SDSwitchCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
       
        if (cell == nil) {
            cell = [[SDSwitchCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            cell.selectionStyle = UITableViewCellSeparatorStyleNone;
            cell.switchItem.on = [[[NSUserDefaults standardUserDefaults] valueForKey:@"data"] boolValue];
            [cell.switchItem addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventTouchUpInside];
        }
        
        cell.textLabel.text = @"Anonymous Analytics";
        return cell;
    }
    
    if (indexPath.row==1 && indexPath.section == 0) {
      static NSString *staticCell = @"staticCell";
        UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:staticCell];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:staticCell];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        }
        
        cell.textLabel.text = @"Rate On The App Store";
        return cell;
    }
    
    if (indexPath.row==2 && indexPath.section == 0) {
        static NSString *staticCell = @"staticCell";
        UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:staticCell];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:staticCell];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
        }
        
        cell.textLabel.text = @"Restore In-App Purchases";
        return cell;
    }
    
    
    
    return nil;
}


#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 75;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0 & indexPath.row == 1) {
        [self sendToAppStore];
        [[LocalyticsSession shared] tagEvent:@"Rate in App Store Tapped"];
        [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
    
    if (indexPath.section == 0 & indexPath.row == 2) {
        [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
        [[LocalyticsSession shared] tagEvent:@"Restore Purchases Tapped"];
        [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

- (UIView *) tableView: (UITableView *) tableView viewForFooterInSection:(NSInteger)section{
    
    if (section == 0) {
    
    SDFooterButtonView *footerView = [[SDFooterButtonView alloc] initWithStyle:SDFooterButtonStyleGreen];
    [footerView.button setTitle:@"Send Feedback" forState:UIControlStateNormal];
    [footerView.button addTarget:self action:@selector(sendEmail:) forControlEvents:UIControlEventTouchUpInside];
    
      return footerView;   
    }
    
    return nil;
}


# pragma mark - MailComposer

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
	[self dismissModalViewControllerAnimated:YES];
}

- (void)sendEmail:(id)sender {
    
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc] init];
        mailViewController.navigationBar.tintColor = [UIColor colorWithRed:54.0/255.0 green:64.0/255.0 blue:78.0/255.0 alpha:1.0];
        mailViewController.mailComposeDelegate = self;
        NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"]];
        NSString *s = [d objectForKey:@"CFBundleExecutable"];
        [mailViewController setSubject:[NSString stringWithFormat:@"%@ Feedback",s]];
        
        [mailViewController setToRecipients:[NSArray arrayWithObject:@"support@bixbyapps.com"]];
        [self presentModalViewController:mailViewController animated:YES];
        
    }
    
}

# pragma mark - SettingsViewController

- (void)switchChanged:(id)sender{
    SDSwitchCell *cell = (SDSwitchCell*)[[sender superview] superview];
    NSLog(@"%@ Flipped",cell.textLabel.text);
    
    if ([cell.textLabel.text isEqualToString:@"Anonymous Analytics"]) {
        [prefs setValue:[NSNumber numberWithBool:cell.switchItem.on] forKey:@"data"];
        [prefs synchronize];
        NSLog(@"Data %@",[prefs valueForKey:@"data"]);
    }
    
    
    
    
}

- (void)sendToAppStore{
    

        NSString *appStorelink = [@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=" stringByAppendingString:self.appId];
        NSLog(@"App Store String %@",appStorelink);
        [[UIApplication sharedApplication] openURL: [NSURL URLWithString:appStorelink]];

    


}


- (void)close{
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

@end
