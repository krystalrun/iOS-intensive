//
//  main.m
//  Day3_3_OverrideNSObjectMethod
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "empClass.h"
#import "facultyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        empClass *empObject =[[empClass alloc]init];
        [empObject setEmpID:123];
        [empObject setempName:"rakesh"];
        [empObject setEmpSalary:1234];
        
        NSLog(@"ID: %d NAME:%s SALARY:%u",[empObject empID],[empObject getempName],[empObject empSalary]);
        
        facultyClass*facultyObject=[[facultyClass alloc]initWithSubject:@"C++" andMobileNo:@"122334435345"];
        [facultyObject setEmpID:321];
        [facultyObject setEmpSalary:12345];
        NSLog(@"ID:%d NAME:%s Salary:%u SUB:%@ Mobile:%@",[facultyObject empID],[facultyObject getempName],[facultyObject empSalary],[facultyObject subjectName],[facultyObject mobileNumber]);
    }
    return 0;
}
