//
//  main.m
//  Day2_OOPS_MultipleFiles
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "empClass.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        empClass*firstobject=[[empClass alloc]init];
        [firstobject setempID:123];
        [firstobject setempName:@"Lokesh"];
        [firstobject setempSalary:1234];
        
        NSLog(@"ID:%i NAME:%@ SALARY:%u",[firstobject getempId],[firstobject getempName],[firstobject getempSalary]);
        empClass*nextObject=[[empClass alloc]init];
    
        [nextObject setempData:321 withName:@"Rakesh" andSalary:12345];
        [nextObject getempData];
        
    }
    return 0;
}
