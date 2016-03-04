//
//  ViewController.h
//  SQLLite Tutorial
//
//  Created by Developer on 3/3/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface ViewController : UIViewController{
    
    __weak IBOutlet UITextField *regNoTextField;
    __weak IBOutlet UITextField *nameTextField;
    __weak IBOutlet UITextField *departmentTextField;
    __weak IBOutlet UITextField *yearTextField;
    __weak IBOutlet UITextField *findByRegisterNumberTextField;
    __weak IBOutlet UIScrollView *myScrollView;
}

- (IBAction)findData:(id)sender;
- (IBAction)saveData:(id)sender;

@end

