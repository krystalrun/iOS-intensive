//
//  emp+SetGetMethods.m
//  Day5_2_CategoryApp2
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "emp+SetGetMethods.h"


@implementation emp (SetGetMethods)

-(void)setEmpData:(short)tempID withName:(NSString*)tempName andSalary:(unsigned)tempSalary
{
    //[self setEmpID:tempID];
   self.empId=tempID;  //using self method, because this is and instance method
   self.empName=tempName;
   self.empSalary=tempSalary;
}
-(void)getEmpData
{
    NSLog(@"ID:%d NAME:%@ SALARY:%u",self.empId,self.empName,self.empSalary);
}
@end
