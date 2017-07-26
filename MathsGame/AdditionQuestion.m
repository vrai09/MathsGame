//
//  AdditionQuestion.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if(self = [super init]) {
        
        _startTime = [NSDate date];
        
        NSInteger firstNum = 10 + arc4random_uniform(101) % (100 - 10);
        NSInteger secondNum = 10 + arc4random_uniform(101) % (100 - 10);
        
        _question = [NSString stringWithFormat:@"%ld + %ld?", (long)firstNum, (long)secondNum];
        
        _answer = firstNum + secondNum;
    }
    
    return self;
}

- (NSInteger)answer {
    
    _endTime = [NSDate date];
    
    return _answer;
    
}

- (NSTimeInterval)answerTime {
    
    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
    
    return answerTime;
    
}
@end
