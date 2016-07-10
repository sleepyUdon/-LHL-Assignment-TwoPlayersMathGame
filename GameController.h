//
//  GameController.h
//  TwoPlayersMathGame
//
//  Created by Viviane Chan on 2016-07-05.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameController : NSObject

@property int correctAnswer;
@property int value1;
@property int value2;


- (void)generateMathQuestion;



@end
