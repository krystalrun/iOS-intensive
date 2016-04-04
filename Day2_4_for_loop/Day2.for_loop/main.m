//
//  main.m
//  Day2.for_loop
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arrayValue[5]; //ANSI-C type array     Objective-C type is NSArray type
        int sum = 0;
        float avg;
        NSLog(@"Enter 5 values of an array: ");
        
        for(short i =0; i<5; i++){
            scanf("%i",&arrayValue[i]);
            sum = sum + arrayValue[i];
        }
        
        avg = (float)sum/5;  //type casting
        
        NSLog(@"Sum value is:%i",sum);
        NSLog(@"Average value is:%.2f",avg);
    }
    return 0;
}
