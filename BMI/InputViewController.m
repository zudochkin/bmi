//
//  ViewController.m
//  BMI
//
//  Created by Dmitry Zudochkin on 4/21/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "InputViewController.h"
#import "BMI.h"
#import "CalculationViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"calculation"]) {
        
        BMI *bmi = [[BMI alloc] init];
        bmi.height = [self.heightTextField.text floatValue];
        bmi.weight = [self.weightTextField.text floatValue];
        
        [[segue destinationViewController] setBmi:bmi];
    }
}
@end
