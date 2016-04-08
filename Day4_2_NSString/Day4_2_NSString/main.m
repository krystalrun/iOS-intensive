//
//  main.m
//  Day4_2_NSString
//
//  Created by Emily Hu on 3/24/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    /*
     NSString class common methods
     1.length: it returns total number of characters
     2.stringWithString: copy the string to another string
     3.stringByAppendingString: appending/concatenating
     4.stringWithFormat: multiple data type info can be transformed into NS type
     5.isEqualToString: going to return boolean form
     6.compare
     7.uppercaseString
     8.lowercaseString
     9.stringWithUTF8String
     10.UTF8String
     
     */
    @autoreleasepool {
       NSString *stringObject1=@"Welcome to RJT";
       NSLog(@"Length of string:%lu",[stringObject1 length]); //%lu for NSUInteger type
    
       NSString *stringObject2=[NSString stringWithString:stringObject1];  //create one string from existing string
       NSLog(@"Copy string Data:%@",stringObject2);
       
       NSString*resultString=@"Welcome ";
        resultString = [resultString stringByAppendingString:@"USA RJT"];  //attaching new value to existing string
        NSLog(@"Appending string:%@",resultString);
        
        
        NSString*formatedString=[NSString stringWithFormat:@"%d Hello %f RJT %c",120,123.345,'A'];
        NSLog(@"Formated string data:%@",formatedString);
        
        if([stringObject1 isEqualToString:stringObject2]==YES)
            NSLog(@"object1 and object2 text is same!!!");
        else
            NSLog(@"Both objects is not the same!!!");
        
        if([stringObject1 compare:stringObject2]==NSOrderedSame)
            NSLog(@"both objects text are the same!!!");
        else if([stringObject1 compare:stringObject2]==NSOrderedAscending)
            NSLog(@"object1 ASCII value > object2 ANCII value");
        else
             NSLog(@"object1 ASCII value < object2 ANCII value");
        
    
        NSString* lowerString=@"welcome to rjt";
        NSLog(@"Upper case string:%@",[lowerString uppercaseString]);
        
        NSString* uppperString=@"WELECOME TO RJT";
        NSLog(@"Upper case string:%@",[uppperString lowercaseString]);
        
        
        char ctypeString[20]="Hello Guys"; //ANSI-C type or char array
        NSString *objectString=[NSString stringWithUTF8String:ctypeString]; //(1)stringWithUTF8String: c-type string to NSString type
        
        char const *ctypePointer=[objectString UTF8String]; //(2)UTF8String:convert NSString to c-type string
        NSLog(@"NSString:%@ c-type String:%s",objectString,ctypePointer);
        
        
        
        
        
    }
    return 0;
}
