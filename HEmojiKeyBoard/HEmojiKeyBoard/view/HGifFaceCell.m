//
//  HGifFaceCell.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HGifFaceCell.h"
#import "Masonry.h"
@interface HGifFaceCell()

@property(nonatomic,strong) UIImageView *faceImageView;
@property(nonatomic,strong) UILabel  *nameLable;

@end
@implementation HGifFaceCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _faceImageView = [UIImageView new];
        _nameLable = [UILabel new];
        
        _nameLable.font = [UIFont systemFontOfSize:11];
        _nameLable.textColor = [UIColor lightGrayColor];
        _nameLable.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_faceImageView];
        [self addSubview:_nameLable];
        
        [_faceImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.centerX.mas_equalTo(self.mas_centerX).offset(0);
            make.top.mas_equalTo(self.mas_top).offset(5);
            
        }];
        
        [_nameLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(self.mas_bottom).offset(-5);
            make.centerX.mas_equalTo(self.mas_centerX).offset(0);
        }];
        
    }
    return self;
}

@end
