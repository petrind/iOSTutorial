//
//  ViewController.h
//  Send Email
//
//  Created by Developer on 3/4/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController
{
    MFMailComposeViewController *mailComposer;
}
- (IBAction)sendMail:(id)sender;

@end

