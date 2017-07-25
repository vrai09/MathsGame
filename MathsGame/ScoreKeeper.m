//
//  ScoreKeeper.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)scoreLog {
    
    NSString *scoreLog = [NSString stringWithFormat:@"score: %d right, %d wrong", _right, _wrong];
    
    return scoreLog;
}

@end
