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
    
    double total = _right + _wrong;
    double percentage = _right / total * 100.0f;
    
    NSString *scoreLog = [NSString stringWithFormat:@"score: %d right, %d wrong ---- %f%%", _right, _wrong, percentage];
    
    return scoreLog;
}

@end
