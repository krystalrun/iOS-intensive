//
//  empClass.h
//  Day2_OOPS_MultipleFiles
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface empClass : NSObject
{
    int empID;
    NSString*empName;
    unsigned empSalary;
}
-(void)setempID:(int)tempID;
-(void)setempName:(NSString*)tempName;
-(void)setempSalary:(unsigned)tempSalary;

-(int)getempId;
-(NSString*)getempName;
-(unsigned)getempSalary;

-(void)setempData:(int)tempid withName:(NSString*)tempName andSalary:(unsigned)tempSalary;
-(void)getempData;
@end
