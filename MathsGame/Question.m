//
//  AdditionQuestion.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if(self = [super init]) {
        
        _startTime = [NSDate date];
        
        _leftValue = 10 + arc4random_uniform(101) % (100 - 10);
        _rightValue = 10 + arc4random_uniform(101) % (100 - 10);
        
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

-(void)generateQuestion {
    
}
@end
