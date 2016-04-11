//
//  someClass.h
//  Day4_5_InformalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "someClassDelegate.h"

@interface someClass : NSObject
{

}
@property(nonatomic)id<someClassDelegate>delegate;//by default it is strong
                                                  //delegate: is an object we can use for communicateto another object
//this delegate is going to handle someClassDelegate protocol
-(void)processAction;


@end
