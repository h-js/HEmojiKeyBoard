//
//  HEmojiManger.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/10.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HEmojiManger.h"
#define EmotionPath [[NSBundle mainBundle] pathForResource:@"face.plist" ofType:nil]
@implementation HEmojiManger

+(NSInteger)kinds
{
    return 1;
}
+ (NSArray *)emotions
{
//    [self emotionToTextDict];
    return [NSArray arrayWithContentsOfFile:EmotionPath];
}

+ (NSDictionary *)emotionToTextDict
{
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"emotionToText.plist" ofType:nil]];
    
    return dict;
}

// 总页数
+ (NSInteger)emotionPage
{
    
    NSInteger emojiCount = [self emotions].count;
    
    return (emojiCount - 1) / emojiCountOfPage + 1;
}

+ (NSArray *)emotionsOfPage:(NSInteger)page
{
    
    NSArray *values = [self emotions];
    
    // 角标
    NSInteger loc = page * emojiCountOfPage;
    
    // 长度
    NSInteger length = emojiCountOfPage;
    
    // 总页数
    NSInteger emojiPage = [self emotionPage];
    
    if (page < 0 || page == emojiPage) {
        NSLog(@"超出页码或者页码不对");
        return nil;
    }
    
    if (page == emojiPage - 1) {
        length = values.count % emojiCountOfPage;
    }
    
    NSIndexSet *indexSets = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(loc, length)];
    
    NSArray *emotions = [values objectsAtIndexes:indexSets];
    
    return emotions;
    
}

@end
