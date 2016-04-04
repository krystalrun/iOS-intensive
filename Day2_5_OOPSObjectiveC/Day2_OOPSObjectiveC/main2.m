//
//  main2.m
//  Day2_OOPSObjectiveC
//
//  Created by Peiran Hu on 3/22/16.
//  Copyright © 2016 Peiran Hu. All rights reserved.
//

//
//  main.m
//  Day2_OOPSObjectiveC
//
//  Created by Peiran Hu on 3/22/16.
//  Copyright © 2016 Peiran Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

//1.interface section: is data abstraction
@interface empClass : NSObject  //by default data in interface section is protected, this is a single inheritance, because  NSObject has no parent class
{
    //within the body these data have access specifier, it is encapsulation
    NSString *empName;  //this is foundation data type class
    unsigned empSalary;
    
    @public
    int empID;
}

-(void)setEmpData;
-(void)getEmpData;

@end  //end of class


//2.implementation section
@implementation empClass

-(void)setEmpData
{
    empID=123;
    empName=@"Lokesh";
    empSalary=12500;
}
-(void)getEmpData
{
    NSLog(@"ID:%i Name:%@ SALARY:%u",empID,empName,empSalary);
}
@end

//3.program section
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        empClass *obj=[[empClass alloc]init]; //object creation and init
        /*
        empClass *obj=[empClass alloc];//create dynamic memory
        [obj init]; //they happens at the same time:at the time of you creating your memory you need to make initialization
        */
        
        //obj->empID;
        
        [obj getEmpData];   //method calling
    }
    return 0;
}
