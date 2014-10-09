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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    int number = [self.numberTextField.text intValue];
    int multiplier = [self.multiplierLabel.text intValue];

    int result = number * multiplier;

    self.answerLabel.text = @(result).description;
}

@end
