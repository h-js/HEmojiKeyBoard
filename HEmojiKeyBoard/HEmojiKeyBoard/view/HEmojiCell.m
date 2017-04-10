//
//  HEmojiCell.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HEmojiCell.h"
#import "Masonry.h"
@interface HEmojiCell()

@property(nonatomic,strong) UIImageView *emojiImageView;
@end

@implementation HEmojiCell


-(instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        _emojiImageView = [UIImageView new];
//        _emojiImageView.contentMode = UIViewContentModeScaleToFill;
        
        [self addSubview:_emojiImageView];
        [_emojiImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.mas_centerX).offset(0);
             make.centerX.mas_equalTo(self.mas_centerX).offset(0);
//            make.left.and.top.and.bottom.and.right.offset(0);
            
        }];
    
        self.backgroundColor = [UIColor brownColor];
    }
    return self;

}

-(void)setEmojiImage:(UIImage *)emojiImage
{
    _emojiImageView.image = emojiImage;
}
@end
