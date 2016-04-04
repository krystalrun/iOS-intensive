//
//  main.m
//  Day2_OOPSObjectiveC
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

//1.interface section: is data abstraction
@interface empClass : NSObject
{
    int empID;
    NSString *empName;  //this is foundation data type class
    unsigned empSalary;
}

-(void)setEmpData;
-(void)getEmpData;

@end  //end of class


//2.implementation section
@implementation empClass

-(void)setEmpData
{
    empID=123;
    empName=@"Lokesh";
    empSalary=12500;
}
-(void)getEmpData
{
    NSLog(@"ID:%i Name:%@ SALARY:%u",empID,empName,empSalary);
}
@end

//3.program section
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        empClass *obj=[[empClass alloc]init]; //object creation and init
        [obj setEmpData];   //method calling
        [obj getEmpData];   //method calling
    }
    return 0;
}
