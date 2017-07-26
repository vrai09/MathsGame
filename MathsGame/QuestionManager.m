//
//  QuestionManager.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-26.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager


- (id) init {
    
    if(self = [super init]) {
        
        _questions = [[NSMutableArray alloc]init];
        
    }
    
    return self;
    
}

- (NSString*)calculateTiming {
    
    //AdditionQuestion *additionQ = [[AdditionQuestion alloc]init];
    
    NSTimeInterval totalTime = 0.0;
    NSTimeInterval averageTime = 0.0;
    
    for(AdditionQuestion *question in _questions) {
        totalTime += question.answerTime;
        averageTime = (_questions.count / question.answerTime);
    }
    
    NSString *timingOutput = [NSString stringWithFormat:@"total time: %0.2f, average time: %0.2f", totalTime, averageTime];
    
    return timingOutput;
}
@end
