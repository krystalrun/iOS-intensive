
//
//  highSchool.m
//  Day4_4_FormalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "highSchool.h"

@implementation highSchool
 //creating the place mark of studentDelegate protocol
#pragma -mark studentDelegate
-(void)setStudentData
{
    self.studentID=123;
    self.studentName=@"Rakesh";
    self.studentAge=32;
}
-(void)getStudentData
{
    NSLog(@"ID:%d NAME:%@ Age:%u",self.studentID,self.studentName,self.studentAge);
}

@end
