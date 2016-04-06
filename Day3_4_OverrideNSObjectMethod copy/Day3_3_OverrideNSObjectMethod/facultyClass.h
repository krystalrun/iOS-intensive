//
//  facultyClass.h
//  Day3_3_OverrideNSObjectMethod
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
@property(strong,nonatomic)NSString *subjectName;
@property(strong,nonatomic)NSString *mobileNumber;


-(facultyClass*)initWithSubject:(NSString*)tempsubjectName andMobileNo:(NSString*)tempmobileNumber;

@end
