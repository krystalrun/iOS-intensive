//
//  main.m
//  Day2_if-else
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        short aValue,bValue,cValue,dValue,maxValue; //primitive data type
        NSLog(@"Enter 4 values: ");
        scanf("%hi%hi%hi%hi",&aValue,&bValue,&cValue,&dValue); //get data from terminal
        /*
        if(aValue > bValue && aValue > cValue && aValue > dValue){ //logical AND
            maxValue = aValue;
        }
        else if(bValue > cValue && bValue > dValue){
            maxValue = bValue;
        }
        else if(cValue > dValue){
            maxValue = cValue;
        }
        else
            maxValue = dValue;
        */
        maxValue = aValue > bValue && aValue > cValue && aValue > dValue ? aValue : bValue>cValue && bValue>dValue ? bValue : cValue>dValue? cValue :dValue;
        
        
        NSLog(@"Max value is:%hi",maxValue);
    }
    return 0;
}
