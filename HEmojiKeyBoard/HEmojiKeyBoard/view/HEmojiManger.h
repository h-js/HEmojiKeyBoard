//
//  HEmojiManger.h
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/10.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HEmojiFaceModel.h"
// 一页多少个
static NSInteger const emojiCountOfPage = 20;

// 一页多少列
static NSInteger const colsOfPage = 7;

// 每个emotion尺寸
static NSInteger const emotionWH = 30;

@interface HEmojiManger : NSObject


+(NSInteger)kinds;

/** 所有表情 */
+ (NSArray *)emotions;

/** 表情转字符串字典 */
+ (NSDictionary *)emotionToTextDict;

/** 总页码 */
+ (NSInteger)emotionPage;

/**
 *  指定页码，返回当前页的表情
 *
 *  @param page 页码
 *
 *  @return 当前页的标签
 */
+ (NSArray *)emotionsOfPage:(NSInteger)page;

@end
