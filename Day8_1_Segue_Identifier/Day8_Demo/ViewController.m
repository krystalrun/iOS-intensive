//
//  ViewController.m
//  Day8_Demo
//
//  Created by swt on 3/30/16.
//  Copyright © 2016 swt. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SecondViewController *controller = [segue destinationViewController];
    
    if ([segue.identifier isEqualToString: @"Red"]) {
        [controller setStr:@"Red"];

    }
    else if ([segue.identifier isEqualToString: @"Green"]) {
        [controller setStr:@"Green"];
    }
}

@end
