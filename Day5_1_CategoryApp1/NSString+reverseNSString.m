//
//  NSString+reverseNSString.m
//  Day5_1_CategoryApp1
//
//  Created by Emily on 3/25/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "NSString+reverseNSString.h"

@implementation NSString (reverseNSString)

-(NSString*)reverseString:(NSString *)string
{
    char str[30];
    strcpy(str,(char*)[string UTF8String]); //UTF8String: convert NSString to C-type string
    char tempChar;
    short length=strlen(str);
    for(short index=0; index<length/2;index++)
    {
        tempChar=str[index];
        str[index]=str[length-index-1];
        str[length-index-1]=tempChar;
    }
    return ([NSString stringWithUTF8String:str]);
}

-(NSString*)changeCaseString:(NSString*)string
{
    //char*str=(char*)[string UTF8String]; //because character pointer is going to hold the address, it cannot return the string type, so cannot call the length
    char str[30];
    strcpy(str,(char*)[string UTF8String]);
    for(short index=0;str[index]!='\0';index++)
    {
      if(str[index]>='A'&&str[index]<='Z')  //A(65) Z(90)
      {
          str[index]=str[index]+32;
      }
      else if(str[index]>='a'&&str[index]<='b')//a(97) z(122)
      {
         str[index]=str[index]-32;
      }
    }
    return ([NSString stringWithUTF8String:str]);
}
@end
