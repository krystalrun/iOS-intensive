//
//  empClass.h
//  Day3_3_OverrideNSObjectMethod
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface empClass : NSObject
{
    int empID;
    char *empName;
    unsigned empSalary;
}

//问题原因property recommend to use C primitive data type and foundation data type, but don't go for c pointer data type
@property(readwrite)int empID;
@property(readwrite)char *empName;
@property(readwrite) unsigned empSalary;

+(empClass*)alloc;  //instancetype, alloc return address, so has *
-(empClass*)init;
-(void)dealloc;  //this is also from NSObject

@end
