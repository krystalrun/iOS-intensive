//
//  walmartClass+offerValue.h
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "walmartClass.h"

@interface walmartClass (offerValue)

+(float)offerValue;  //this should be a class method, because for every instance it is the same
+(float)applyofferValue:(float)bill;
@end
