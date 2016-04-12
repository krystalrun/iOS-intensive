//
//  targetClass.m
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "targetClass.h"
#import "targetClass_offerValue.h"

@implementation targetClass

@synthesize productCount,offerValue;

+(float)bill:(NSArray*)productArray
{
    int sum=0;
    for (short i = 0; i < [productArray count]; i++) {
        sum+=[[productArray objectAtIndex:i] productCount]*[[productArray objectAtIndex:i] productCost];
    }
    return sum;
}

+(void)print:(NSArray*)productArray
{
    float sum=0;
    NSLog(@"=======================Target=====================");
     NSLog(@"     Name    Count   Cost   OfferValue    Totalcost   ");
    for (short i = 0; i < [productArray count]; i++) {
        NSLog(@"%d.   %@     %d     %.2f       %.0f%%      %.2f", i+1,[[productArray objectAtIndex:i] productName],[[productArray objectAtIndex:i]productCount],[[productArray objectAtIndex:i] productCost],[[productArray objectAtIndex:i]offerValue]*100,[[productArray objectAtIndex:i] productCount]*[[productArray objectAtIndex:i] productCost]);
        sum+=(1-[[productArray objectAtIndex:i]offerValue])*[[productArray objectAtIndex:i] productCount]*[[productArray objectAtIndex:i] productCost];
    }
      NSLog(@"Bill: %.2f",[self bill:productArray]);
    NSLog(@"Bill after applying offer value: %.2f",sum);
    
   
}

-(float)applyofferValue
{
    return [self productCount]*[self productCost] * (1-[self offerValue]);
}

@end
