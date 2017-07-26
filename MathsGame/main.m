//
//  main.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *keepScore = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        InputHandler *handleInput = [[InputHandler alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];

        
        while(TRUE) {
            
            Question *newQuestion = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:newQuestion];
            
    
            NSLog(@"%@", newQuestion.question);
            
            NSString *userInput = [handleInput getUserInput];
            int userAnswer = [userInput intValue];
            
            
            if([userInput  isEqual: @"quit"]) {
                break;
            }
            
            
            if(userAnswer == newQuestion.answer) {
                keepScore.right += 1;
                NSLog(@"Right!");
                NSLog(@"%@",[keepScore scoreLog]);
            }else{
                keepScore.wrong += 1;
                NSLog(@"Wrong!");
                NSLog(@"%@",[keepScore scoreLog]);
            }
            
            NSLog(@"%@", [questionManager calculateTiming]);
            
        }
    }
    return 0;
}
