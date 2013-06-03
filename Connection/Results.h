//
//  Results.h
//  Connection
//
//  Created by waqas on 3/06/13.
//  Copyright (c) 2013 waqas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Results : NSObject{
    NSString *time;
    NSString *points;
    NSString *correct;
    NSString *incorrect;
    NSString *sessions;
    NSString *accuracy;
}
@property(nonatomic ,retain) NSString *time;
@property(nonatomic ,retain) NSString *points;

@property(nonatomic ,retain) NSString *correct;
@property(nonatomic ,retain) NSString *incorrect;
@property(nonatomic ,retain) NSString *sessions;

@property(nonatomic ,retain) NSString *accuracy;

@end
