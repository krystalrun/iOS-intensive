//
//  main.m
//  Day5_4_Products
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "walmartClass.h"
#import "walmartClass+offerValue.h"
#import "targetClass.h"
#import "targetClass_offerValue.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        walmartClass *productObject1=[[walmartClass alloc]init];
        [productObject1 setProductID:1];
        [productObject1 setProductName:@"milk1"];
        [productObject1 setProductCost:3.0];
        [productObject1 setProductCount:2];
        [productObject1 setProductBrand:@"milkFactory1"];
        [productObject1 setManufactureDate:03/25/2016];
        [productObject1 setExpireDate:04/01/2016];
        
        walmartClass *productObject2=[[walmartClass alloc]init];
        [productObject2 setProductID:2];
        [productObject2 setProductName:@"milk2"];
        [productObject2 setProductCost:4.0];
        [productObject2 setProductCount:4];
        [productObject2 setProductBrand:@"milkFactory2"];
        [productObject2 setManufactureDate:02/25/2016];
        [productObject2 setExpireDate:03/01/2016];
        
        
        NSArray *productArray = [[NSArray alloc]initWithObjects:productObject1, productObject2,nil];
        
        [walmartClass print:productArray];
    
        targetClass *productObject3=[[targetClass alloc]init];
        [productObject3 setProductID:3];
        [productObject3 setProductName:@"milk3"];
        [productObject3 setProductCost:5.0];
        [productObject3 setProductCount:7];
        [productObject3 setProductBrand:@"milkFactory3"];
        [productObject3 setManufactureDate:01/25/2016];
        [productObject3 setExpireDate:02/01/2016];
        [productObject3 setOfferValue:0.06];
        
        targetClass *productObject4=[[targetClass alloc]init];
        [productObject4 setProductID:4];
        [productObject4 setProductName:@"milk4"];
        [productObject4 setProductCost:2.0];
        [productObject4 setProductCount:9];
        [productObject4 setProductBrand:@"milkFactory4"];
        [productObject4 setManufactureDate:02/25/2016];
        [productObject4 setExpireDate:03/01/2016];
        [productObject4 setOfferValue:0.07];
        
        
        NSArray *productArray2 = [[NSArray alloc]initWithObjects:productObject3, productObject4,nil];
        
        [targetClass print:productArray2];
       
        
        
    }
    return 0;
}
