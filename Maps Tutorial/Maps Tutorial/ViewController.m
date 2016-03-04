//
//  ViewController.m
//  Maps Tutorial
//
//  Created by Developer on 3/4/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import "ViewController.h"
#import "MapAnnotation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView = [[MKMapView alloc]initWithFrame:
               CGRectMake(10, 100, 300, 300)];
    mapView.delegate = self;
    mapView.centerCoordinate = CLLocationCoordinate2DMake(37.32, -122.03);
    mapView.mapType = MKMapTypeHybrid;
    CLLocationCoordinate2D location;
    location.latitude = (double) 37.332768;
    location.longitude = (double) -122.030039;
    // Add the annotation to our map view
    MapAnnotation *newAnnotation = [[MapAnnotation alloc]
                                    initWithTitle:@"Apple Head quaters" andCoordinate:location];
    [mapView addAnnotation:newAnnotation];
    CLLocationCoordinate2D location2;
    location2.latitude = (double) 37.35239;
    location2.longitude = (double) -122.025919;
    MapAnnotation *newAnnotation2 = [[MapAnnotation alloc]
                                     initWithTitle:@"Test annotation" andCoordinate:location2];
    [mapView addAnnotation:newAnnotation2];
    [self.view addSubview:mapView];
}
// When a map annotation point is added, zoom to it (1500 range)
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
    MKAnnotationView *annotationView = [views objectAtIndex:0];
    id <MKAnnotation> mp = [annotationView annotation];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance
    ([mp coordinate], 1500, 1500);
    [mv setRegion:region animated:YES];
    [mv selectAnnotation:mp animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
