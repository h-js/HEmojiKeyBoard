//
//  HEmojiFaceModel.h
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HEmojiFaceModel : NSObject


@property(nonatomic,assign) NSInteger type;
@property(nonatomic,strong) NSString *face_id;
@property(nonatomic,strong) NSString *face_name;

@end
