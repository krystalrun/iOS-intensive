//
//  facultyClass.m
//  Day3_multilevelinheritance
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "facultyClass.h"

@implementation facultyClass

-(void)setsubjectName: (NSString*)tempsubjectName
{
    subjectName=tempsubjectName;
}

-(void)setmobileNumber:(NSString*)tempNumber
{
    mobileNumber=tempNumber;
}

-(NSString*)getsubjectName
{
    return subjectName;
}
-(NSString*)getmobileNumber
{
    return mobileNumber;
}

-(void)showData
{    //1
    //NSLog(@"employee ID is %i",empID);
    //NSLog(@"employee Name is %@",empName);
    //NSLog(@"employee Salary is %u",empSalary);
    //NSLog(@"the subject name that this faculty teaches is %@",subjectName);
    //NSLog(@"the faculty's mobile number is %@",mobileNumber);
    
    //2
    //NSLog(@"faculty ID is %i Name is %@ Salary %u subjectName %@ mobileNumber %@:", empID,empName,empSalary,subjectName,mobileNumber);
    
    
    //3 when you make the private of thoes properties
    /*
     @interface empClass : NSObject
     { @private
     int empID;
     NSString *empName;
     unsigned empSalary;
     }
     */
    /*
     super keyword always gives base clasee object information
     self keyword always gives current object information
     */
    [super showData]; //calling emp showdata method
    NSLog(@"subject:%@ mobileNumber: %@",subjectName,mobileNumber);
}

@end
