//
//  targetClass.h
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "productClass.h"
#import "printbillDelegate.h"


@interface targetClass : productClass<printbillDelegate>

@property(readwrite)short productCount;


@end
