//
//  Player.h
//  TwoPlayersMathGame
//
//  Created by Viviane Chan on 2016-07-10.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int playerScore;

-(instancetype)initWithPlayerScore;

-(int)calculateScore;

@end
