//
//  AdditionQuestion.h
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Question : NSObject

@property NSString *question;
@property (nonatomic, assign)NSInteger answer;
@property int leftValue;
@property int rightValue;
@property NSDate *startTime;
@property NSDate *endTime;

- (instancetype)init;

- (NSInteger)answer;

- (NSTimeInterval)answerTime;

- (void)generateQuestion;

@end
