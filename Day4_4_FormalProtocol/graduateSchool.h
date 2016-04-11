//
//  graduateSchool.h
//  Day4_4_FormalProtocol
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "student.h"
#import "studentDelegate.h"

@interface graduateSchool : student<studentDelegate>   //<studentDelegate,...,...,...> multiple protocols 
{

}


@end
