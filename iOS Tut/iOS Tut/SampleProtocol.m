//
//  SampleProtocol.m
//  
//
//  Created by Developer on 3/3/16.
//
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess{
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(processCompleted) userInfo:nil repeats:NO];
}
@end