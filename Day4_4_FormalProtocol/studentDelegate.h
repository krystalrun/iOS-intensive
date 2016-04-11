//
//  studentDelegate.h
//  Day4_4_FormalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol studentDelegate //in formal protocol remove <NSObject>, that is for informal

@required
-(void)setStudentData;
@optional
-(void)getStudentData;


@end
