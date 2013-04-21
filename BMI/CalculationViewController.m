//
//  CalculationViewController.m
//  BMI
//
//  Created by Dmitry Zudochkin on 4/21/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "CalculationViewController.h"

@interface CalculationViewController ()

@end

@implementation CalculationViewController

@synthesize bmi;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSLog(@"%@", [bmi calculateBMIText]);
    self.bmiLabel.text = [[NSNumber numberWithFloat:[bmi calculateBMI]] stringValue];
    
    self.bmiTextLabel.text = [bmi calculateBMIText];
    
    self.weightRecomendationsLabel.text = [bmi weightRecomendations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
