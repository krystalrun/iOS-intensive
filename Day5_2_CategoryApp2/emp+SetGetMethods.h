//
//  emp+SetGetMethods.h
//  Day5_2_CategoryApp2
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "emp.h"

@interface emp (SetGetMethods)

-(void)setEmpData:(short)tempID withName:(NSString*)tempName andSalary:(unsigned)tempSalary;
-(void)getEmpData;


@end
