//
//  main.cpp
//  Day2_OverloadingC++
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#include <iostream>

void print()
{
    std::cout <<"No Argument print!\n";

}

void print(int x)
{
    std::cout<<"One Argument print"<<x<<"\n";
}

void print(int x,int y){
    std::cout<<"\nTwo Argument print"<<x<<"and y value"<<y;
}

void print(char ch1,char ch2)
{
    std::cout<<"\nTwo Arguments char:"<<ch1<<"char2:"<<ch2;
}
int main(int argc, const char * argv[]) {
    print();
    print(10);
    print(10,20);
    print('A','a');
    
    return 0;
}
