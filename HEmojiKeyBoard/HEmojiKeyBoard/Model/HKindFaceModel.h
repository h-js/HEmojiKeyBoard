//
//  HKindFaceModel.h
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HKindFaceModel : NSObject


@property(nonatomic,assign) NSInteger type;

@property(nonatomic,strong) NSString *name;

@property(nonatomic,strong) NSString *cover_image;

@property(nonatomic,strong) NSMutableArray *faceArray;

@property(nonatomic,assign) NSInteger columns;    //列数。    8

@property(nonatomic,assign) NSInteger lines;      //几行。    3。

@property(nonatomic,assign) NSInteger pageNumber;  //每一页有多少个数据

@property(nonatomic,assign) NSInteger pages;    //几页

@end
