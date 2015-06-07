//
//  StartScene.m
//  GravityMaze
//
//  Created by Henry Wei on 6/4/15.
//  Copyright (c) 2015 Henry Wei. All rights reserved.
//

#import "StartScene.h"
#import "BRWCommon.h"
#import "BRWMainScene.h"

@interface StartScene(){
    SKSpriteNode * background;
    SKSpriteNode * start;
    SKSpriteNode * heroRanking;
    
    SKLabelNode * myLabel;
}

@end

@implementation StartScene

//- (id)initWithSize:(CGSize)size {
//    if (self = [super initWithSize:size]) {
//        [self startGame];
//    }
//    return self;
//}

-(void)didMoveToView:(SKView *)view {
    [self startGame];
}

- (void)startGame{
    [self createBackground];
    [self createTitle];
    [self createStartButton];
    [self createRankButton];
}

- (void)createBackground{
    background = [SKSpriteNode spriteNodeWithImageNamed:@"background"];
//    background.anchorPoint = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
    
    [background setAnchorPoint:CGPointMake(0.5,0.5)];
    background.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
    
    //will fill the whole screen
    background.size = self.frame.size;
    [self addChild:background];
}

- (void)createTitle{
    myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Gravity Maze";
    myLabel.fontSize = [[BRWCommon instance] getTitleFontSize];
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame)*1.5);
    
    [self addChild:myLabel];
}

- (void)createStartButton{
    start = [SKSpriteNode spriteNodeWithImageNamed:@"startbtn"];
    [start setAnchorPoint:CGPointMake(0.5, 0.5)];

    start.position = CGPointMake(CGRectGetMidX(self.frame),
                                CGRectGetMidY(self.frame));
    start.xScale = 0.3;
    start.yScale = 0.3;
    start.name = @"startbtn";
    
    [self addChild:start];
}

- (void)createRankButton{
    heroRanking = [SKSpriteNode spriteNodeWithImageNamed:@"rankbtn"];
    [heroRanking setAnchorPoint:CGPointMake(0.5, 0.5)];
    
    heroRanking.position = CGPointMake(CGRectGetMidX(self.frame),
                                      CGRectGetMidY(self.frame)*0.5);
    
    heroRanking.name = @"rankbtn";
    heroRanking.xScale = 0.3;
    heroRanking.yScale = 0.3;
    
    [self addChild:heroRanking];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInNode:self];
    SKNode *touchedNode = [self nodeAtPoint:touchLocation];
    
    if ([touchedNode.name isEqualToString:@"startbtn"]) {
        NSLog(@"just touch start button");
        
        SKScene * mainScene = [BRWMainScene sceneWithSize:self.size];
        SKTransition *transition = [SKTransition flipVerticalWithDuration:0.5];
        [self.view presentScene:mainScene transition:transition];
    }
    else if([touchedNode.name isEqualToString:@"rankbtn"]){
        NSLog(@"just touch rank button");
    }
    else{
        NSLog(@"just touch unknow postion");
    }
}

@end
