//
//  Multiplication.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-26.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

- (id) init {
    
    if(self = [super init]) {
        
        [self generateQuestion];
    }
    
    return self;
}

- (void)generateQuestion {
    
    self.question = [NSString stringWithFormat:@"%d * %d?", self.leftValue, self.rightValue];
    self.answer = self.leftValue * self.rightValue;
    
}
@end
