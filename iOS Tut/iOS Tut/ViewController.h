//
//  ViewController.h
//  iOS Tut
//
//  Created by Developer on 3/3/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController
{
    __weak IBOutlet UILabel *myTitleLabel;
    __weak IBOutlet UIImageView *imageView;
    UIImagePickerController *imagePicker;
    __weak IBOutlet UILabel *myLabel;
}
- (IBAction)showCamera:(id)sender;

@end
