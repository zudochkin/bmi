//
//  CalculationViewController.h
//  BMI
//
//  Created by Dmitry Zudochkin on 4/21/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "InputViewController.h"
#import "BMI.h"

@interface CalculationViewController : InputViewController

@property BMI *bmi;
@property (weak, nonatomic) IBOutlet UILabel *bmiLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmiTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightRecomendationsLabel;
@end
