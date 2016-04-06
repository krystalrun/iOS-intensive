//
//  empClass.m
//  Day3_multilevelinheritance
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "empClass.h"

@implementation empClass

/********setter methods implementation********/
-(void)setempID: (int)tempID
{
    empID=tempID;
}
-(void)setempName: (NSString*)tempName
{
    empName=tempName;
}
-(void)setempSalary:(unsigned)tempSalary //unsigned and unsigned int are the same
{
    empSalary=tempSalary;
}

/********getter methods implementation********/
-(int)getempID
{
    return empID;
}
-(NSString*)getempName
{
    return empName;
}
-(unsigned)getempSalary
{
    return empSalary;
}

-(void)showData;
{
    NSLog(@"employee ID is %i",empID);   // %d and %i are the same placeholder, %d is a formalizing style in c
    NSLog(@"employee Name is %@",empName);
    NSLog(@"employee Salary is %u",empSalary);
    //NSLog(@"employee ID is %i Name is %@ Salary is %u": empID, empName, empSalary);
}


@end
