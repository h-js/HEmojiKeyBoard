//
//  HEmojiPageView.h
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HEmojiPageView;
@protocol HEmojiPageViewDelegate <NSObject>

-(void)hemojiPageView:(HEmojiPageView *)pageview didSelectItem:(NSDictionary *)dict;

@end

@interface HEmojiPageView : UICollectionViewCell

@property (nonatomic, strong) NSArray *emotions;

@end
