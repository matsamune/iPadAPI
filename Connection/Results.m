//
//  Results.m
//  Connection
//
//  Created by waqas on 3/06/13.
//  Copyright (c) 2013 waqas. All rights reserved.
//

#import "Results.h"

@implementation Results
@synthesize time,points,correct,incorrect,sessions,accuracy;
-(void) dealloc{
    [time release];
    [points release];
    [correct release];
    [incorrect release];
    [sessions release];
    [accuracy release];
    [super dealloc];
}
@end
