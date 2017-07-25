//
//  InputHandler.m
//  MathsGame
//
//  Created by Livleen Rai on 2017-07-25.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)getUserInput {
    
    char inputChar[255];
    
    fgets(inputChar, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    
    NSString *fixedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSLog(@"%@", fixedString);
    
    return fixedString;
}
@end
