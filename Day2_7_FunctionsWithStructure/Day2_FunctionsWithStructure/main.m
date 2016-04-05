//
//  main.m
//  Day2_FunctionsWithStructure
//
//  Created by Emily Hu on 3/22/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct empObject
{
    short empID;
    char empName[30]; //C-Type string in objective-c we required NSString type
    unsigned empSalary;
}EMP; //EMP is Alias Name

EMP setEmpData() //it will return my employee object
{
  
    EMP newVariable;
    
    newVariable.empID=123;  //variable.memeber = value;
    strcpy(newVariable.empName, "Lokesh");
    newVariable.empSalary=12500;
    
    return newVariable;
}

void getEmpdata(EMP tempVariable)
{
    NSLog(@"ID:%hi NAME:%s SALARY: %u", tempVariable.empID,tempVariable.empName,tempVariable.empSalary); //it is NSString type

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EMP empVariable;
        struct empObject empAnotherVariable;
        
        empVariable.empID=231;
        strcpy(empVariable.empName, "Rakesh"); //it is ANSI-C type
        empVariable.empSalary=13245;
        
        empAnotherVariable = setEmpData(); //calling the function
        
        getEmpdata(empVariable); //printing first emp variable data
        getEmpdata(empAnotherVariable); //printing another variable data
        
    }
    return 0;
}


/*
//
//  main.m
//  Day2_FunctionsWithStructure
//
//  Created by Balu Naik on 3/22/16.
//  Copyright © 2016 RJT. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct empObject
{
    short empID;
    char empName[30];   //C-Type string  in objective-c we required NSString type
    unsigned empSalary;
}EMP;                    //EMP is Alias Name

void setEmpData()
{
    EMP newVariable;
    
    newVariable.empID=123;                  //variable.member = value;
    strcpy(newVariable.empName, "Lokesh");
    newVariable.empSalary=12500;
    NSLog(@"setempdata ID:%hi NAME:%s SALARY:%u",newVariable.empID,newVariable.empName,newVariable.empSalary);
    
    //return newVariable;
}

void getEmpdata(EMP tempVariable)
{
    NSLog(@"getempdata ID:%hi NAME:%s SALARY:%u",tempVariable.empID,tempVariable.empName,tempVariable.empSalary);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        
        EMP empVariable;
        
        struct empObject empAnotherVariable;
        
        empVariable.empID=231;
        strcpy(empVariable.empName, "Rakesh");  //it is ANSI-C
        empVariable.empSalary=13245;
        
        //empAnotherVariable = setEmpData();   //Calling the function
        
        getEmpdata(empVariable);   //printing first emp variable data
        //getEmpdata(empAnotherVariable);  //printing another variable data
        NSLog(@"main ID:%hi NAME:%s SALARY:%u",empAnotherVariable.empID,empAnotherVariable.empName,empAnotherVariable.empSalary);
        
    }
    return 0;
}
*/