//
//  ViewController.m
//  TwoPlayersMathGame
//
//  Created by Viviane Chan on 2016-07-05.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

#import "ViewController.h"
#import "GameController.h"
#import "Player.h"



@interface ViewController ()


@property (strong, nonatomic) IBOutlet UILabel *mathQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *finalAnswerLabel;
@property (weak, nonatomic) IBOutlet UILabel *scorePlayer1Label;
@property (weak, nonatomic) IBOutlet UILabel *scorePlayer2Label;

@property (strong, nonatomic) NSMutableArray* inputValueArray;

@property (strong, nonatomic) GameController* gameController;

@property (strong, nonatomic) NSString* correctAnswer;

@property (strong, nonatomic) Player* player1;
@property (strong, nonatomic) Player* player2;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    GameController *gameController = [[GameController alloc]init];
    
    Player *player1 = [[Player alloc]init];
    Player *player2 = [[Player alloc]init];
    
    self.player1.playerScore =0;
    self.player2.playerScore =0;
    
    self.scorePlayer1Label.text = [NSString stringWithFormat:@"%d",player1.playerScore];
    self.scorePlayer2Label.text = [NSString stringWithFormat:@"%d",player2.playerScore];
    
    [gameController generateMathQuestion];
    
    self.correctAnswer = [NSString stringWithFormat:@"%d",gameController.correctAnswer];
    self.mathQuestionLabel.text = [NSString stringWithFormat:@"Current player: %d+%d=?", gameController.value1, gameController.value2];
    

    _inputValueArray = [[NSMutableArray alloc] init];
    
    _finalAnswerLabel.text = @"you answer";

}

- (IBAction)button1Pressed:(UIButton *)sender {
    NSLog(@"You have pressed 1");
    [self.inputValueArray addObject:@"1"];
}


- (IBAction)button2Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"2"];
}

- (IBAction)button3Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"3"];
}

- (IBAction)button4Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"4"];
}

- (IBAction)button5Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"5"];
}

- (IBAction)button6Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"6"];
}

- (IBAction)button7Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"7"];
}

- (IBAction)button8Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"8"];
}

- (IBAction)button9Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"9"];
}

- (IBAction)button0Pressed:(UIButton *)sender {
    [self.inputValueArray addObject:@"0"];
}

- (IBAction)buttonEnterPressed:(UIButton *)sender {
    NSLog(@"You have pressed Enter");
    NSString *compiledNumbers = [self.inputValueArray componentsJoinedByString:@""];
    
    if ([self.correctAnswer isEqualToString:compiledNumbers]){
        self.finalAnswerLabel.text = [NSString stringWithFormat:@"%@ \n Good job!", compiledNumbers];
        
//        self.player1.playerScore = self.player1.playerScore +1;
//
//        self.scorePlayer1Label.text = [NSString stringWithFormat:@"%d", self.player1.playerScore];
        self.scorePlayer1Label.text = @"Working";

    }
    else{
        self.finalAnswerLabel.text = [NSString stringWithFormat:@"%@ \n Try again!", compiledNumbers];

    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
