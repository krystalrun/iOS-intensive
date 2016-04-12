//
//  walmartClass+offerValue.m
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "walmartClass+offerValue.h"

@implementation walmartClass (offerValue)

+(float)offerValue
{
    return 0.05;
}
+(float)applyofferValue: (float)bill
{
    return bill * (1-[walmartClass offerValue]);
}

@end
