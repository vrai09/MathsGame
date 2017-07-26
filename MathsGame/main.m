//
//  main.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *keepScore = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];

        
        while(TRUE) {
            
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc]init];
            [questionManager.questions addObject:additionQuestion];
            
            InputHandler *handleInput = [[InputHandler alloc]init];
    
            NSLog(@"%@", additionQuestion.question);
            
            NSString *userInput = [handleInput getUserInput];
            int userAnswer = [userInput intValue];
            
            
            if([userInput  isEqual: @"quit"]) {
                break;
            }
            
            
            if(userAnswer == additionQuestion.answer) {
                keepScore.right += 1;
                NSLog(@"Right!");
                NSLog(@"%@",[keepScore scoreLog]);
            }else{
                keepScore.wrong += 1;
                NSLog(@"Wrong!");
                NSLog(@"%@",[keepScore scoreLog]);
            }
            
            
        }
    }
    return 0;
}
