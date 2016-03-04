//
//  ViewController.h
//  Maps Tutorial
//
//  Created by Developer on 3/4/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController
{
    
    __weak IBOutlet MKMapView *mapView;
}

@end

