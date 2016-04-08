//
//  main.m
//  Day4_1_NSNumber
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *boolNumber=[NSNumber numberWithBool:YES];  //JUMP TO DEFINATION, YES is the same with TRUE
        NSLog(@"Bool type data:%d",[boolNumber boolValue]);   //inheritance, using oops concept for C primitive data type
        
        NSNumber *charNumber=[NSNumber numberWithChar:'A'];
        NSLog(@"Char type data:%c",[charNumber charValue]);
       
        NSNumber *floatNumber=[[NSNumber alloc]initWithFloat:12.345f];
        NSLog(@"Float type data:%.2f",[floatNumber floatValue]);
        
        NSNumber *intSalary=[NSNumber numberWithInteger:1234]; //returns c-type integer value
        //NSNumber *integerNuber=[NSNumber numberWithInteger:12345]; //returns NSInteger type value
        NSNumber *longSalary=[[NSNumber alloc]initWithLong:12345];
        
        //work on isEqual (id), isEqualToNumber(nullable id)
        /*
        1. isEqual: receiver should be object type of “id”
        2. isEqualTo: receiver should be object type of “id”  or it can be nil
        3. isEqualToNumber: receiver should be NSNumber object type
        4. isEqualToValue: receiver should be NSValue object type
         */
        if([intSalary isEqualToNumber:longSalary])   //nullable id it can be zero value
                                                     //not equal: if(![intSalary isEqualToNumber:longSalary])
            NSLog(@"Both salary are Equal");
        
    
        if([intSalary compare:longSalary]==NSOrderedSame)
        {
            NSLog(@"Both salary are Same!!");
        }
        else if([intSalary compare:longSalary]==NSOrderedAscending) //first less than second, it is going to compile like this:else if([intSalary compare:longSalary]==-1)
        {
            NSLog(@"intSalary<longSalary!!");
        }
        else if([intSalary compare:longSalary]==NSOrderedDescending)  //first larger than second
        {
           NSLog(@"intSalary>longSalary!!");
        }
        else;
        /*Difference bettwen isEqual and compare:
        (1)when I am working the isEqual to number it compare values and returns bool type i.e. TRUE/FALSE
        (2)if we work with compare method then returns NSComparisonResult(is enum type, it is a user-defined data type)
         i.e. NSOrderedSame(0),NSOrderedAscending(-1),NSOrderedDescending(1)
        */
        
        NSNumber *doubleNumber=[NSNumber numberWithDouble:12.34];
        NSLog(@"Double value type:%e",[doubleNumber doubleValue]);
        
    }
    return 0;
}
