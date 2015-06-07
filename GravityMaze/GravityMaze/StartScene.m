//
//  StartScene.m
//  GravityMaze
//
//  Created by Henry Wei on 6/4/15.
//  Copyright (c) 2015 Henry Wei. All rights reserved.
//

#import "StartScene.h"
#import "BRWCommon.h"

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

}

- (void)createRankButton{

}

@end
