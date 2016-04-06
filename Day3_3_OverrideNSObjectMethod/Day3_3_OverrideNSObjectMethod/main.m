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
        [empObject setEmpName:"abcd"];
        [empObject setEmpID:123];
        [empObject setEmpSalary:1234];
        
        NSLog(@"ID: %d NAME:%s SALARY:%u",[empObject empID],[empObject empName],[empObject empSalary]);
    }
    return 0;
}
