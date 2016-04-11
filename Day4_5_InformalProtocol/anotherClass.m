//
//  anotherClass.m
//  Day4_5_InformalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "anotherClass.h"
#import "someClass.h"

@implementation anotherClass

-(void)processStart
{
    NSLog(@"From process start!!!");
    someClass*newObject=[[someClass alloc]init];
    [newObject setDelegate:self]; //first delegate then call the method
    [newObject processAction];
   
}
#pragma -mark someClassDelegate
-(void)processExit
{
    NSLog(@"from process exit!!!");
}
@end
