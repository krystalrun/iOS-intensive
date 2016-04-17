//
//  SecondViewController.m
//  Day8_Demo
//
//  Created by swt on 3/30/16.
//  Copyright © 2016 swt. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblTextResult;

@end

@implementation SecondViewController
@synthesize str;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateUI];
}

-(void) updateUI {
    _lblTextResult.text = str;
    if ([str isEqualToString:@"Red"]) {
        self.view.backgroundColor = [UIColor redColor];
    }
    else if ([str isEqualToString:@"Green"]) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
