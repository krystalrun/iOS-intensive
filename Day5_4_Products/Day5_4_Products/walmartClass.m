//
//  walmartClass.m
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "walmartClass.h"
#import "walmartClass+offerValue.h"

@implementation walmartClass

@synthesize productCount;


#pragma -mark printbillDelegate
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
    NSLog(@"===============Walmart===============");
    NSLog(@"     Name    Count   Cost   Totalcost   ");
    for (short i = 0; i < [productArray count]; i++) {
        
        NSLog(@"%d.   %@     %d      %.2f      %.2f", i+1,[[productArray objectAtIndex:i] productName],[[productArray objectAtIndex:i]productCount],[[productArray objectAtIndex:i] productCost],[[productArray objectAtIndex:i] productCount]*[[productArray objectAtIndex:i] productCost]);
        
    }
    NSLog(@"Bill: %.2f",[walmartClass bill:productArray]);
    NSLog(@"Bill after applying 5%% offer: %.2f", [walmartClass applyofferValue:[walmartClass bill:productArray]]);

}

@end
