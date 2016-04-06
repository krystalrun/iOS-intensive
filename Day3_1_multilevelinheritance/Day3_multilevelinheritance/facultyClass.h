//
//  facultyClass.h
//  Day3_multilevelinheritance
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "empClass.h"

@interface facultyClass : empClass
{
    NSString *subjectName;
    NSString *mobileNumber;
}

-(void)setsubjectName:(NSString*)tempsubjectName;
-(void)setmobileNumber:(NSString*)tempNumber;

-(NSString*)getsubjectName;
-(NSString*)getmobileNumber;

/***** overriding method of base class i.e. empClass *****/

// re-implementation of super or base class method into sub or derived class is called overriding

-(void)showData;  //we only declare the methods we want to override

@end
