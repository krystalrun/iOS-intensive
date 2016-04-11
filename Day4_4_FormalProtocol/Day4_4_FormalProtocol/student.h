//
//  student.h
//  Day4_4_FormalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
@protocol studentDelegate

@required
-(void)setStudentData;
@optional
-(void)getStudentData;

@end
*/


@interface student : NSObject
{

}

@property(readwrite)int studentID;
@property(strong,nonatomic)NSString*studentName;
@property(readwrite)int studentAge;


@end
