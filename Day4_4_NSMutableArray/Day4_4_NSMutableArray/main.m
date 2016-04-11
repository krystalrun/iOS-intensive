//
//  main.m
//  Day4_4_NSMutableArray
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "empClass.h"

int main(int argc, const char * argv[]) {
    /*
    NSMutableArray common methods...
    1. addObject
    2. insertObject
    3. objectAtIndex
    4. replaceObjectAtIndex
    5. removeObject
    6. removeLastObject
    7. removeObjectAtIndex
    8. removeAllObjects
     */
    @autoreleasepool {
        NSMutableArray *arrObject=[[NSMutableArray alloc]init];
        empClass*obj1=[[empClass alloc]init];
        [obj1 setEmpID:111];
        [obj1 setEmpName:@"Lokesh"];
        [obj1 setEmpSalary:12345];
        
        [arrObject addObject:obj1];
        
        empClass*obj2=[[empClass alloc]init];
        [obj1 setEmpID:333];
        [obj1 setEmpName:@"Rakesh"];
        [obj1 setEmpSalary:54321];
        
        [arrObject addObject:obj2];
        NSLog(@"Object count:%lu",[arrObject count]);
        
        empClass*obj3=[[empClass alloc]init];
        [obj3 setEmpID:222];
        [obj3 setEmpName:@"Balu"];
        [obj3 setEmpSalary:54321];
        
        [arrObject insertObject:obj3 atIndex:1];
       // NSLog(@"Object Data:%@",arrObject); //it prints reference of empClass object, because empClass is encapsulate, which doesn't allow access
        //NSLog(@"Some object Data:%@",[arrObject objectAtIndex:0]); //still the reference
        NSLog(@"Id:%d NAME:%@ SALARY:%u",[[arrObject objectAtIndex:0]empID],[[arrObject objectAtIndex:0]empName],[[arrObject objectAtIndex:0]empSalary]);
        
        [obj3 setEmpID:555];
        [obj3 setEmpName:@"Balu Naik"];
        [obj3 setEmpSalary:4321];
        
        [arrObject replaceObjectAtIndex:1 withObject:obj3];
        
        NSLog(@"ID:%d NAME:%@ SALARY:%u",[[arrObject objectAtIndex:1]empID],[[arrObject objectAtIndex:1]empName],[[arrObject objectAtIndex:1]empSalary]);
        
        if([arrObject indexOfObject:obj1]==0)
        {
            NSLog(@"obj1 index:%lu",[arrObject indexOfObject:obj1]);
        }
        else
        {
            NSLog(@"object not found!");
        }
        
        [arrObject removeObject:obj1];
        [arrObject removeLastObject];
        [arrObject removeObjectAtIndex:0];
        [arrObject removeAllObjects];
        
        
    }
    return 0;
}
