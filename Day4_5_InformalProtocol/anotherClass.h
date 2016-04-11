//
//  anotherClass.h
//  Day4_5_InformalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "someClassDelegate.h"

@interface anotherClass : NSObject<someClassDelegate>

-(void)processStart;

@end
