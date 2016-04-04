//
//  main.m
//  Day2_StringVowelCount
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char string[50]="Welcome RJT Compuquest";
        
        short count = 0;
        
        for(short i=0;string[i]!='\0';i++){  //'\0' indicate the end of a string
        
           switch(string[i]){
              case 'a':
              case 'A':
              case 'e':
              case 'E':
              case 'i':
              case 'I':
              case 'o':
              case 'O':
              case 'u':
              case 'U':
                ++count;
                break;
             default:
                break;
           } //end of switch body
        }//end of for_loop body
        NSLog(@"Total of vowels count:%hi", count);
    }
    return 0;
}