//
//  GameController.m
//  TwoPlayersMathGame
//
//  Created by Viviane Chan on 2016-07-05.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (void)generateMathQuestion{
        self.value1 = arc4random_uniform(20);
        self.value2 = arc4random_uniform(20);
        self.correctAnswer = _value1+_value2;
    }

@end
