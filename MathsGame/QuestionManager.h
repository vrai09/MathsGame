//
//  QuestionManager.h
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-26.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

- (id) init;

- (NSString *)calculateTiming;
@end
