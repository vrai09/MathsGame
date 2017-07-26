//
//  QuestionFactory.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-26.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (id) init {
    
    if(self = [super init]) {
        
        _questionSubclassNames = @[@"Addition", @"Subtraction", @"Multiplication", @"Division"];
    }
    
    return self;
    
}

- (Question *)generateRandomQuestion {
    
    int randomNumber = arc4random_uniform(3);
    
    Question *randomQuestion = [[NSClassFromString(_questionSubclassNames[randomNumber])alloc]init];
    
    return randomQuestion;
}
@end
