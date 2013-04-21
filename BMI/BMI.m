//
//  BMI.m
//  BMI
//
//  Created by Dmitry Zudochkin on 4/21/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "BMI.h"

@implementation BMI
- (float)calculateBMI
{
    return ([self weight] / [self height] / [self height]);
}
@end
