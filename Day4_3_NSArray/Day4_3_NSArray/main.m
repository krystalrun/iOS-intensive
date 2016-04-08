//
//  main.m
//  Day4_3_NSArray
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    /*
     NSArray type object not allowed to perform add,insert,remove and update operations
     NSMutableArray type object then allowed to perform add,insert,remove and update operations
     
     NSArray common methods.
  
     1.initWithObjects
     2.initWithArray
     3.count
     4.objectAtIndex
     5.indexOfObject     (returns index if object is found)  else returns NSNotFound
     */
    @autoreleasepool {
        NSArray *arrayObject=[[NSArray alloc]initWithObjects:@"Apple",@"iPhone",@"iPad",@"iPod",@"ApplTV",@"iWatch",@"MacBook", nil];
        NSLog(@"No of Objects:%lu",[arrayObject count]);
        
        NSLog(@"Object data:%@",[arrayObject objectAtIndex:4]); //reeturn 5th object data
        
        NSLog(@"All Object:%@",arrayObject);
        
        for(short index=0; index<[arrayObject count]; index++)
        {
            NSLog(@"Index:%hi Objet:%@",index,[arrayObject objectAtIndex:index]);
        }
        
        NSLog(@"iPhone object index:%lu",[arrayObject indexOfObject:@"iPad"]);
        
        if([arrayObject indexOfObject:@"Balu"]==NSNotFound)
        {
            NSLog(@"obejct is not found");
        }
        else
        {
            NSLog(@"Yes i got object index!!!");
        }
        
        
    }
    return 0;
}
