//
//  main.m
//  Day5_1_CategoryApp1
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+reverseNSString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString*stringObject1=@"Welcome";
        NSLog(@"Reverse string:%@",[stringObject1 reverseString:stringObject1]);
        NSString*stringObject2=@"Hello RJT";
        NSLog(@"Change case string:%@",[stringObject2 changeCaseString:stringObject2]);
    }
    return 0;
}
