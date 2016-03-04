//
//  ViewController.m
//  iOS Tut
//
//  Created by Developer on 3/3/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
    [myLabel setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showCamera:(id)sender {
    imagePicker.allowsEditing = YES;
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypeCamera])
    {
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else{
        imagePicker.sourceType =
        UIImagePickerControllerSourceTypePhotoLibrary;
    }
    [self presentModalViewController:imagePicker animated:YES];
    
}
-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    if (image == nil) {
        image = [info objectForKey:UIImagePickerControllerOriginalImage];
    }
    imageView.image = image;
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissModalViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Sample protocol delegate
-(void)processCompleted{
    [myLabel setText:@"Process Completed"];
}

- (IBAction)setTitleLabel:(id)sender {
    [myTitleLabel setText:@"Hello World"];
}

@end
