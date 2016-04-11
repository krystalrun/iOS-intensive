//
//  main.m
//  Day4_5_InformalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "anotherClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        anotherClass*testObject=[[anotherClass alloc]init];
        [testObject processStart];
    }
    return 0;
}
