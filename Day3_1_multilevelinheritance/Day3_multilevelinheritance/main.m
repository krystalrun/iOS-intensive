//
//  main.m
//  Day3_multilevelinheritance
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "facultyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        facultyClass *facultyObject=[[facultyClass alloc] init];
        [facultyObject setempID:123];
        [facultyObject setempName:@"mike"];
        [facultyObject setempSalary:12345];
        [facultyObject setsubjectName:@"computer science"];
        [facultyObject setmobileNumber:@"1-508-8560-9876"];
        [facultyObject showData];
        
    }
    return 0;
}
