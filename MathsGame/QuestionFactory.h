//
//  QuestionFactory.h
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-26.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : Question

@property NSArray *questionSubclassNames;

- (id) init;

- (Question *)generateRandomQuestion;

@end
