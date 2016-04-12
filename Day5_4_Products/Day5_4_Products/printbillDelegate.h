//
//  printbillDelegate.h
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol printbillDelegate

+(float)bill:(NSArray*)productArray; //calculate the total cost without discount
+(void)print:(NSArray*)productArray;

@end
