//
//  Parser.m
//  Connection
//
//  Created by waqas on 3/06/13.
//  Copyright (c) 2013 waqas. All rights reserved.
//

#import "Parser.h"
#import "AppDelegate.h"
#import "Results.h"

@implementation Parser

@synthesize appdelegate,results,curElem;
-(Parser*)initXMLParser{
    [super init];
    appdelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    return self;
}
-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    if ([elementName isEqualToString:@"container"]) {
        //initialize the cotainer
        appdelegate=[[AppDelegate alloc]init];
    }
else if ([elementName isEqualToString:@"ID"]){
}
else if ([elementName isEqualToString:@"game"]){
    //intialize the results
    results=[[Results alloc]init];
    
}
    NSLog(@"Processing Element : %@",elementName);
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if (!curElem) {
        curElem=[[NSMutableString alloc]initWithString:string];
        
    }
    else[curElem appendString:string];
    NSLog(@"Processing Value : %@",curElem);
}
-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    if ([elementName isEqualToString:@"container"]) {
        return;
    }
    if ([elementName isEqualToString:@"game"]) {
        [appdelegate.games addObject:results];
        
        [results release];
        results=nil;
    }
    else
        [results setValue:curElem  forKey:elementName  ];
    [curElem release] ;
    curElem=nil;
}
@end
