//
//  BRWCommon.m
//  GravityMaze
//
//  Created by Henry Wei on 6/6/15.
//  Copyright (c) 2015 Henry Wei. All rights reserved.
//

#import "BRWCommon.h"

@implementation BRWCommon

+ (BRWCommon *)instance
{
    static BRWCommon *commonInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        commonInstance = [[self alloc] init];
    });
    return commonInstance;
}

- (float)getTitleFontSize
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat fontsize = 20;
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    NSLog(@"%f",screenHeight);
    NSLog(@"%f",screenWidth);
    
    switch ((NSInteger)screenHeight) {
            //iphone 6 plus
        case 736:
            fontsize = 38.0;
            break;
            //iphone 6
        case 667:
            fontsize = 36.0;
            break;
        case 480:
            fontsize = 34.0;
            break;
        case 1024:
            fontsize = 64;
            break;
        case 568:
            fontsize = 34;
            break;
        default:
            break;
    }
    
    return fontsize;
}

@end
