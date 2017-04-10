//
//  ViewController.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "ViewController.h"
#import "HEmojiKeyBoardView.h"
#import "LTChatFaceView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
//    HEmojiKeyBoardView *keyboardView = [[HEmojiKeyBoardView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 250)];
//    [self.view addSubview:keyboardView];
    
    LTChatFaceView *faceView = [[LTChatFaceView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 180)];
    [self.view addSubview:faceView];
    faceView.backgroundColor = [UIColor brownColor];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
