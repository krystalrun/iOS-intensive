//
//  empClass.h
//  Day3_multilevelinheritance
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface empClass : NSObject
{
    int empID;
    NSString *empName;
    unsigned empSalary;
}

//accessor method: is the setter and getter methods of the instance variable
//change the data of the variable
//get the data of the variable

/*****setter methods********/
-(void)setempID: (int)tempID;
-(void)setempName: (NSString*)tempName;
-(void)setempSalary:(unsigned)tempSalary;


/*****getter methods*******/
-(int)getempID;
-(NSString*)getempName;
-(unsigned)getempSalary;

-(void)showData;
@end
