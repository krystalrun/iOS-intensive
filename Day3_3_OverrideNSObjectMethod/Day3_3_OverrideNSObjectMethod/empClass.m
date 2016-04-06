//
//  empClass.m
//  Day3_3_OverrideNSObjectMethod
//
//  Created by Emily Hu on 3/23/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "empClass.h"

@implementation empClass

@synthesize empID,empSalary;

+(empClass*)alloc
{
   //it is a class method so we cannot access instance members of a class
   //here we can do some memory creation
    return ([super alloc]);
}

-(empClass*)init
{
    
    self.empName=(char*)calloc(20,sizeof(char)); //dynamic memory creation for char pointer
    strcpy(self.empName, "Lokesh");
    return [super init];  //calling NSObject init method
}

-(void)dealloc
{
    //[super dealloc];  ARC nonARC (automatic reference counting), ARC is already enable so we do not need to call super
    //method becoz ARC will do the work
    free(self.empName);
    
}

@end
