//
//  AppDelegate.h
//  Connection
//
//  Created by waqas on 3/06/13.
//  Copyright (c) 2013 waqas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSMutableArray *games;
    NSInteger *ids;
}
@property(nonatomic,retain)NSMutableArray *games;
@property(nonatomic,readwrite)NSInteger *ids;
@property (strong, nonatomic) UIWindow *window;

@end
