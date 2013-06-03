//
//  Parser.h
//  Connection
//
//  Created by waqas on 3/06/13.
//  Copyright (c) 2013 waqas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Results,AppDelegate;

@interface Parser : NSObject<NSXMLParserDelegate>{
    Results *results;
    AppDelegate *appdelegate;
    NSMutableString *curElem;
}
@property(nonatomic,retain)Results *results;
@property(nonatomic,retain)AppDelegate *appdelegate;
@property(nonatomic,retain)NSMutableString *curElem;
-(Parser*)initXMLParser;
@end
