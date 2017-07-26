//
//  AdditionQuestion.h
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AdditionQuestion : NSObject

@property NSString *question;
@property (nonatomic, assign)NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

- (instancetype)init;

- (NSInteger)answer;

- (NSTimeInterval)answerTime;

@end
