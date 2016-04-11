//
//  main.m
//  Day5_3_Extensions
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "emp.h"
#import "emp_salaryExtension.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        emp *empObject=[[emp alloc]init];
        [empObject setEmpID:123];
        [empObject setEmpName:@"Lokesh"];
        [empObject setEmpSalary:12345];
        
        [empObject getEmpData];
    }
    return 0;
}
