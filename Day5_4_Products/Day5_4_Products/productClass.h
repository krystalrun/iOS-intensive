//
//  productClass.h
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface productClass : NSObject
{
    int productID;
    NSString*productName;
    double productCost;
    NSString* productBrand;
    NSDate *manufactureDate;
    NSDate *expireDate;
}

@property(readwrite)int productID;
@property(nonatomic)NSString* productName;
@property(readwrite)double productCost;
@property(nonatomic)NSString* productBrand;
@property(nonatomic)NSDate *manufactureDate;
@property(nonatomic)NSDate *expireDate;


@end
