//
//  LTChatFaceView.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/10.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "LTChatFaceView.h"
#import "HEmojiKeyBoardView.h"
#import "Masonry.h"
@interface LTChatFaceView()

@property(nonatomic,strong) HEmojiKeyBoardView *keyBoardView;
@property(nonatomic,strong) UIView *bottomToolView;
@end

@implementation LTChatFaceView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _keyBoardView = [[HEmojiKeyBoardView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        _bottomToolView = [UIView new];
        [self addSubview:_keyBoardView];
        [self addSubview:_bottomToolView];
        
        
        [_keyBoardView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).offset(0);
            make.right.mas_equalTo(self.mas_right).offset(0);
            make.left.mas_equalTo(self.mas_left).offset(0);
            make.bottom.mas_equalTo(self.mas_bottom).offset(-40);
        }];
        
        [_bottomToolView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.keyBoardView.mas_bottom).offset(0);
            make.right.and.left.and.bottom.offset(0);
        }];
        
    }
    return self;
}

@end
