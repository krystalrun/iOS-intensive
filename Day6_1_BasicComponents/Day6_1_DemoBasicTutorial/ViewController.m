//
//  ViewController.m
//  Day6_1_DemoBasicTutorial
//
//  Created by Emily on 3/28/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstLabel; //outlet:variable

@property (weak, nonatomic) IBOutlet UILabel *secondLabel;

- (IBAction)button:(id)sender;  //action:function

@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

- (IBAction)buttonAction_plus:(id)sender;
- (IBAction)buttonAction_minus:(id)sender;
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

- (IBAction)button:(id)sender {
    if([_firstLabel.text isEqualToString:@"Hi"])
    {
        _firstLabel.text=@"Hello";
        _secondLabel.text=@"Hi";
    }else
    {
        _firstLabel.text=@"Hi";
        _secondLabel.text=@"Hello";
    
    }
}

- (IBAction)buttonAction_plus:(id)sender {
    int value=[_valueLabel.text intValue];
    value+=1;
    _valueLabel.text=[NSString stringWithFormat:@"%d",value];
}

- (IBAction)buttonAction_minus:(id)sender {
    int value=[_valueLabel.text intValue];
    if(value==0){
        return;
    }
    value-=1;
    _valueLabel.text=[NSString stringWithFormat:@"%d",value];
}
@end
