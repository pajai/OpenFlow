//
//  SBNotifyingWindow.m
//  GdataI
//
//  Created by Jonathan Saggau on 6/29/09.
//  Copyright 2009 Sounds Broken inc. All rights reserved.
//

#import "SBNotifyingWindow.h"

@implementation SBNotifyingWindow


- (id)initWithFrame:(CGRect)frame;       
{
    
    self = [super initWithFrame:frame];
    if (self != nil) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)sendEvent:(UIEvent *)event;  
{
    [super sendEvent:event];
    
    for (id someObj in objects) {
        if ([someObj respondsToSelector:@selector(interestingEvent:)]) {
            [someObj performSelector:@selector(interestingEvent:) withObject:event];
        }
    }
}

-(void)addObjectInterestedInTouches:(id )anObject
{
    if(!objects)
    {
        objects = [[NSMutableSet alloc] initWithCapacity:1];
    }
    [objects addObject:anObject];
}

-(void)removeObjectWithInterest:(id)anObject;
{
    [objects removeObject:anObject];
}

- (void)dealloc {
    [objects removeAllObjects]; [objects release]; objects = nil;
    [super dealloc];
}

@end
