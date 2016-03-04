//
//  MapAnnotation.m
//  Maps Tutorial
//
//  Created by Developer on 3/4/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import "MapAnnotation.h"

@implementation MapAnnotation
-(id)initWithTitle:(NSString *)title andCoordinate:
(CLLocationCoordinate2D)coordinate2d{
    self.title = title;
    self.coordinate =coordinate2d;
    return self;
}
@end
