//
//  emp_salaryExtension.h
//  Day5_3_Extensions
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "emp.h"

@interface emp ()  //if brackets is empty, it is called extension

@property(readwrite)unsigned empSalary; //when I write @property, we already have setter and getter methods for empSalary


-(void)getEmpData;

@end
