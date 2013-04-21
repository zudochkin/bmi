//
//  BMI.h
//  BMI
//
//  Created by Dmitry Zudochkin on 4/21/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMI : NSObject
@property float weight, height;

- (float)calculateBMI;
@end
