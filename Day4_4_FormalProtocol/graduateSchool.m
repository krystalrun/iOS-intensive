
//
//  graduateSchool.m
//  Day4_4_FormalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "graduateSchool.h"

@implementation graduateSchool

#pragma -mark studentDelegate
-(void)setStudentData
{
    self.studentID=123;
    self.studentName=@"Lokesh";
    self.studentAge=27;
}
-(void)getStudentData
{
    NSLog(@"ID:%d NAME:%@ Age:%u",self.studentID,self.studentName,self.studentAge);
}

@end
