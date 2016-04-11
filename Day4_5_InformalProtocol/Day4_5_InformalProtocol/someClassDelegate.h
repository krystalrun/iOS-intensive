//
//  someClassDelegate.h
//  Day4_5_InformalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol someClassDelegate <NSObject>   //it is informal protocol syntax

-(void)processExit;  //by default all methods are in @required block only


@end
