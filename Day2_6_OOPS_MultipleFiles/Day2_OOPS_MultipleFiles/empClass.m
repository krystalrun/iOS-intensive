//
//  empClass.m
//  Day2_OOPS_MultipleFiles
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "empClass.h"

@implementation empClass

-(void)setempID:(int)tempID
{
    empID=tempID;
}
-(void)setempName:(NSString *)tempName
{
    empName=tempName;
}
-(void)setempSalary:(unsigned int)tempSalary
{
    empSalary=tempSalary;
}
-(int)getempId
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
-(void)setempData:(int)tempid withName:(NSString*)tempName andSalary:(unsigned int)tempSalary
{
    empID=tempid;
    empName=tempName;
    empSalary=tempSalary;
}
-(void)getempData
{
  NSLog(@"ID: %i NAME: %@ SALARY: %u", empID, empName, empSalary);
}
@end
