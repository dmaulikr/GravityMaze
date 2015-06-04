//
//  StartScene.m
//  GravityMaze
//
//  Created by Henry Wei on 6/4/15.
//  Copyright (c) 2015 Henry Wei. All rights reserved.
//

#import "StartScene.h"

@interface StartScene(){
    SKSpriteNode * background;
    SKSpriteNode * start;
    SKSpriteNode * heroRanking;
}

@end

@implementation StartScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        [self startGame];
    }
    return self;
}

- (void)startGame{
    [self createBackground];
}

- (void)createBackground{
    background = [SKSpriteNode spriteNodeWithImageNamed:@"background"];
    
    [self addChild:background];
}

@end
