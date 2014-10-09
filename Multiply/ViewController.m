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

    if (result >= 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
    }

    NSMutableString *fizzBuzzText = [[NSMutableString alloc] initWithString:@""];
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

@end
