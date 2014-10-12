//
//  ViewController.m
//  Multiply
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *numberTextField;
@property (strong, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UISlider *sliderField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.answerLabel.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    int number = [self.numberTextField.text intValue];
    int multiplier = [self.multiplierLabel.text intValue];

    int result = number * multiplier;

    self.answerLabel.text = @"";
    if (result >= 20) {
        self.view.backgroundColor = [UIColor colorWithRed:0.361 green:0.722 blue:0.361 alpha:1];
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
    }

    NSMutableString *fizzBuzzText = [[NSMutableString alloc] initWithString:@""];
    if (result > 0) {
        if ((result % 3) == 0) {
            [fizzBuzzText appendString:@"fizz"];
        }
        if ((result % 5) == 0) {
            [fizzBuzzText appendString:@"buzz"];
        }
        if ([fizzBuzzText isEqualToString:@""]) {
            [fizzBuzzText appendString:@(result).description];
        }
        self.answerLabel.text = fizzBuzzText;
    }
}


- (IBAction)sliderValueChanged:(id)sender {
    self.multiplierLabel.text = [NSString stringWithFormat:@"%.0f", self.sliderField.value];
}

@end
