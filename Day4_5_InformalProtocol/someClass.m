//
//  someClass.m
//  Day4_5_InformalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "someClass.h"

@implementation someClass

@synthesize delegate;
-(void)processAction
{
    NSLog(@"From process Action Method!!");
    [delegate processExit]; //it is a protocol method wich can implement by any other classes(but we don't know which class)
    //we don't know which class is going to implement processExit
}

@end
