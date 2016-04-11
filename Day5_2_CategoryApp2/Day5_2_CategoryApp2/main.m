//
//  main.m
//  Day5_2_CategoryApp2
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "emp+SetGetMethods.h"
//#import "emp.h"  //emp+SetGetMethods.h already automatically import emp.h

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        emp *empObject=[[emp alloc]init];
        [empObject setEmpData:123 withName:@"lokesh" andSalary:12345];
        [empObject getEmpData];

    }
    return 0;
}
