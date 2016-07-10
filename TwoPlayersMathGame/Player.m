//
//  Player.m
//  TwoPlayersMathGame
//
//  Created by Viviane Chan on 2016-07-10.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

#import "Player.h"

@implementation Player


-(instancetype)initWithPlayerScore
{
    self = [super init];
    if (self) {
        _playerScore=0;
    }
    return self;
}

@end
