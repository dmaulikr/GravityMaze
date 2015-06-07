//
//  GameViewController.m
//  GravityMaze
//
//  Created by Henry Wei on 6/2/15.
//  Copyright (c) 2015 Henry Wei. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "StartScene.h"

//@implementation SKScene (Unarchive)
//
//+ (instancetype)unarchiveFromFile:(NSString *)file {
//    /* Retrieve scene file path from the application bundle */
//    NSString *nodePath = [[NSBundle mainBundle] pathForResource:file ofType:@"sks"];
//    /* Unarchive the file to an SKScene object */
//    NSData *data = [NSData dataWithContentsOfFile:nodePath
//                                          options:NSDataReadingMappedIfSafe
//                                            error:nil];
//    NSKeyedUnarchiver *arch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
//    [arch setClass:self forClassName:@"SKScene"];
//    SKScene *scene = [arch decodeObjectForKey:NSKeyedArchiveRootObjectKey];
//    [arch finishDecoding];
//    
//    return scene;
//}
//
//@end

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSLog(@"height: %f", self.view.bounds.size.height);
    NSLog(@"width: %f", self.view.bounds.size.width);
    
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    //skView.showsFPS = YES;
    //skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    //GameScene *scene = [GameScene unarchiveFromFile:@"GameScene"];
    StartScene * startscene = [StartScene sceneWithSize:skView.bounds.size];
    startscene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:startscene];
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
//    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
//        return UIInterfaceOrientationMaskAllButUpsideDown;
//    } else {
//        return UIInterfaceOrientationMaskAll;
//    }
    return UIInterfaceOrientationMaskPortrait;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
