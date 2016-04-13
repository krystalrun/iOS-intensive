//
//  ViewController.m
//  Day7_2
//
//  Created by Emily on 3/29/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()  //!!!!!coding standard: always use this private interface for outlet, action (this is the private extension)

- (IBAction)btnBarLeft_pressed:(id)sender;
- (IBAction)btnBarRight_pressed:(id)sender;
- (IBAction)switchBtn_Tapped:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblText;//all outlet automatically weak
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;
- (IBAction)switchBtnActivityIndicator_Tapped:(id)sender;
- (IBAction)stepperValueChange:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblStepperValue;

- (IBAction)StartResetBtnPressed:(id)sender;

@property(assign)double value; //assign means readonly is for integer/float/double etc primitive type value, copy means read
//assign is the default and simply performs a variable assignment
//copy specifies the new value should be sent -copy on assignment and the old value sent -release.
/*
attribute of property list:
atomic //default
nonatomic
strong=retain //default
weak= unsafe_unretained
retain
assign //default
unsafe_unretained
copy
readonly
readwrite //default
 
 readwrite
 setter and getter generated.
 Indicates that the property should be treated as read/write.
 This attribute is the default.
 Both a getter and setter method are required in the @implementation block. If you use the @synthesize directive in the implementation block, the getter and setter methods are synthesized.
 
 readonly
 declaring your property as readonly you tell compiler to not generate setter method automatically.
 Indicates that the property is read-only.
 If you specify readonly, only a getter method is required in the @implementation block. If you use the @synthesize directive in the @implementation block, only the getter method is synthesized. Moreover, if you attempt to assign a value using the dot syntax, you get a compiler error.
 
 assign
 assign is the default and simply performs a variable assignment
 assign is a property attribute that tells the compiler how to synthesize the property's setter implementation
 I would use assign for C primitive properties and weak for weak references to Objective-C objects.
 
 retain = strong
 it is retained, old value is released and it is assigned
 retain specifies the new value should be sent -retain on assignment and the old value sent -release
 retain is the same as strong.
 apple says if you write retain it will auto converted/work like strong only.
 methods like "alloc" include an implicit "retain"
 */
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self PrepareNavigationBar];
}

-(void)PrepareNavigationBar{
    
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc]initWithTitle:@"Left" style:UIBarButtonItemStylePlain target:self  action:@selector(btnLeft_Pressed:)];//target means adding the action on button, selector means indicating method name.
    self.navigationItem.leftBarButtonItem = btnLeft;
    
    UIBarButtonItem *btnRight = [[UIBarButtonItem alloc]initWithTitle:@"Right" style:UIBarButtonItemStylePlain target:self action:@selector(btnRight_Pressed:)];
    self.navigationItem.rightBarButtonItem = btnRight;
    
}

-(void)btnLeft_Pressed:(id)sender{
    NSLog(@"Left Button Pressed");
}

-(void)btnRight_Pressed:(id)sender{
    NSLog(@"Right Button Pressed");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBarLeft_pressed:(id)sender {
}
- (IBAction)btnBarRight_pressed:(id)sender {
}

- (IBAction)switchBtn_Tapped:(id)sender {
    
    UISwitch *switchBtn = (UISwitch*)sender;
    if(switchBtn.on){
        //_lblText.text = @"On";
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"Alert" message:@"Light switch on" preferredStyle:UIAlertControllerStyleAlert]; //change the style: UIAlertControllerStyleActionSheet
        
        UIAlertAction *alertOk = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            _lblText.text = @"On";
        }];
        
        UIAlertAction *alertCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            _lblText.text = @"Off";
        }];
        
        [alertcontroller addAction:alertOk];
        [alertcontroller addAction:alertCancel];
        
        [self presentViewController:alertcontroller animated:YES completion:nil];
        
    } else{
        
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"Alert" message:@"Light switch off" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *alertOk = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            _lblText.text = @"Off";
        }];
        [alertcontroller addAction:alertOk];
         [self presentViewController:alertcontroller animated:YES completion:nil];
     //   _lblText.text = @"Off";
    }
}
- (IBAction)switchBtnActivityIndicator_Tapped:(id)sender {
    UISwitch *switchBtn = (UISwitch*)sender;
    
    if(switchBtn.on){
        [_activity startAnimating];
    }else{
        [_activity stopAnimating];
    }
}

- (IBAction)stepperValueChange:(id)sender {
    UIStepper *stepper =(UIStepper*)sender;
    double value = stepper.value;
    
    _lblStepperValue.text = [NSString stringWithFormat:@"%.2f",value]; //[NSString stringWithFormat:@"%d",(int)value];
}

-(void)increaseValueForProgressView{
    if(_progressView.progress<1){
        self.value = self.value + 0.01;
        _progressView.progress=self.value;
        [self performSelector:@selector(increaseValueForProgressView) withObject:nil afterDelay:0.2];
    }
    
}
- (IBAction)StartResetBtnPressed:(id)sender {
    
    if([sender tag]==101){
        self.value = 0.0f;
        [self increaseValueForProgressView];
        
    }else if ([sender tag]==102){
        self.value = 0.0f;
        self.progressView.progress=self.value;
    }
}
@end
