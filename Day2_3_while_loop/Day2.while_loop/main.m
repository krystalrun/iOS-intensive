//
//  main.m
//  Day2.while_loop
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int aValue,fDigit=0,lDigit,sum;
        NSLog(@"Enter one digit: "); //@ is indicating NSString Data
        scanf("%d",&aValue);
        
        lDigit = aValue%10;
        
        while(aValue>0){
            fDigit=aValue%10;
            aValue=aValue/10;
        }
        sum = lDigit+fDigit;
        NSLog(@"Sum of first and last digit is:%d", sum);
    }
    return 0;
}
