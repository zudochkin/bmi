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

- (NSString *)calculateBMIText
{
    float bmi = self.calculateBMI;
    
    NSString *bmiText;
    
    if (bmi <= 16) bmiText = @"Выраженный дефицит массы";
    else if (bmi <= 18.5) bmiText = @"Недостаточная (дефицит) массы тела";
    else if (bmi <= 25) bmiText = @"Норма";
    else if (bmi <= 30) bmiText = @"Избыточная масса тело (предожирение)";
    else if (bmi <= 35) bmiText = @"Ожирение первой степени";
    else if (bmi <= 40) bmiText = @"Ожирение второй степени";
    else bmiText = @"Ожирение третьей степени (морбидное)";
        
        
    //        16 и менее	Выраженный дефицит массы
    //        16—18,5	Недостаточная (дефицит) масса тела
    //        18,5—25	Норма
    //        25—30	Избыточная масса тела (предожирение)
    //        30—35	Ожирение первой степени
    //        35—40	Ожирение второй степени
    //        40 и более	Ожирение третьей степени (морбидное)
    
    return bmiText;
}

- (NSString *)weightRecomendations
{
    float heightSquared = self.height * self.height;
    
    float minNormalWeight = 18.5 * heightSquared;
    
    float maxNormalWeight = 25 * heightSquared;
    
    return [NSString stringWithFormat:@"Нормальный вес для вашего роста от %02f до %02f", minNormalWeight, maxNormalWeight];
}
@end
