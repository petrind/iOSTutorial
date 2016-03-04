//
//  SampleProtocol.h
//  iOS Tut
//
//  Created by Developer on 3/3/16.
//  Copyright (c) 2016 Yourgadgetinfo. All rights reserved.
//

#import <Foundation/Foundation.h>
// Protocol definition starts here
@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end
// Protocol Definition ends here
@interface SampleProtocol : NSObject

{
    // Delegate to respond back
    id <SampleProtocolDelegate> _delegate;
    
}
@property (nonatomic,strong) id delegate;

-(void)startSampleProcess; // Instance method

@end
