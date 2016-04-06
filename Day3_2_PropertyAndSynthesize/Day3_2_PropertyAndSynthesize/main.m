//
//  main.m
//  Day3_2_PropertyAndSynthesize
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "empClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        empClass *empObject=[[empClass alloc]init];
        
        [empObject setEmpID:123];
        [empObject setEmpName:@"lokesh"];
        
        [empObject setEmpSalary:12500];
        
        [empObject setEmpName:@"rakesh"]; //lokesh and rakesh store in different memory location
        
        NSLog(@"ID:%d NAME:%@ SALARY:%u",[empObject empID],[empObject empName],[empObject empSalary]);
    }
    return 0;
}
