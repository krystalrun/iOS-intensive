//
//  facultyClass.m
//  Day3_3_OverrideNSObjectMethod
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "facultyClass.h"

@implementation facultyClass

@synthesize subjectName,mobileNumber;

-(facultyClass*)initWithSubject:(NSString *)tempsubjectName andMobileNo:(NSString *)tempmobileNumber
{
    self.subjectName=tempsubjectName;
    self.mobileNumber=tempmobileNumber;
    return ([super init]);
}

@end
