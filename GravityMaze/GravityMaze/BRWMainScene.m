//
//  BRWMainScene.m
//  GravityMaze
//
//  Created by Henry Wei on 6/7/15.
//  Copyright (c) 2015 Henry Wei. All rights reserved.
//

#import "BRWMainScene.h"
@interface BRWMainScene(){
    SKSpriteNode * background;
}

@end

@implementation BRWMainScene

-(void)didMoveToView:(SKView *)view {
    [self startGame];
}

- (void)startGame{
    [self createBackground];
}

- (void)createBackground{
    background = [SKSpriteNode spriteNodeWithImageNamed:@"mainbg"];
    //    background.anchorPoint = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
    
    [background setAnchorPoint:CGPointMake(0.5,0.5)];
    background.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
    
    //will fill the whole screen
    background.size = self.frame.size;
    [self addChild:background];
}

@end
