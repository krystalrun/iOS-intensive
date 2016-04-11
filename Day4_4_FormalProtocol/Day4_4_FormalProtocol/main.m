//
//  main.m
//  Day4_4_FormalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "graduateSchool.h"
#import "highSchool.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        highSchool*firstObject=[[highSchool alloc]init];
        [firstObject setStudentData];
        [firstObject getStudentData];
        
        graduateSchool*nextObject=[[graduateSchool alloc]init];
        [nextObject setStudentData];
        [nextObject getStudentData];
    }
    return 0;
}
