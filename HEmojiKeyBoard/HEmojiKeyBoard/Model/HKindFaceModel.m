//
//  HKindFaceModel.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HKindFaceModel.h"

@implementation HKindFaceModel


-(NSInteger)pages
{
    if(_pages == 0)
    {
        _pages = (self.faceArray.count - 1) / (_lines * _columns) + 1;
    
    }
    return _pages;

}

-(NSInteger)pageNumber
{
    if(_pageNumber == 0)
    {
        _pageNumber = _lines * _columns;
    
    }
    return _pageNumber;
}
@end
