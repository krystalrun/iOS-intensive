//
//  empClass.h
//  Day3_2_PropertyAndSynthesize
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface empClass : NSObject
{
    int empID;   //instance members of the class
    NSString *empName;   //Foundation frameworks class type object or reference type
    unsigned empSalary;
}

//setter:write, getter:read
/* 
 @property
An object’s properties let other objects inspect or change its state.
The goal of the @property is to make it easy to create and configure properties by automatically generating these access (setter and getter) methods.
 It allows you to specify the behavior of a public property on a semantic level, and it takes care of the implementation details for you.
 
 @synthesize in objective-c just implements property setters and getters
 
*/
@property(readwrite)int empID;
@property(strong,nonatomic)NSString *empName;
@property(readwrite) unsigned empSalary;
@end
