//
//  emp.m
//  Day5_3_Extensions
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "emp.h"
#import "emp_salaryExtension.h"

@implementation emp

@synthesize empID,empName;
//@synthesize empSalary;

-(void)getEmpData
{
     NSLog(@"ID:%hi NAME:%@ SALARY:%u",empID,empName,_empSalary); //instance members
    
    //NSLog(@"ID:%hi NAME:%@ SALARY:%u",self.empID,self.empName,self.empSalary); //current object members
    
    //NSLog(@"ID:%hi NAME:%@ SALARY:%u",[self empID],[self empName],[self empSalary]);  //current object getter method

    
}


@end
