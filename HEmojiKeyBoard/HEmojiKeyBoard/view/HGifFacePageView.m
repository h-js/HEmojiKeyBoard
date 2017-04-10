//
//  HGifFacePageView.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HGifFacePageView.h"
#import "HGifFaceCell.h"
#import "Masonry.h"
@interface HGifFacePageView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UICollectionView *pageCollectionView;

@end
@implementation HGifFacePageView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        _pageCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
        _pageCollectionView.delegate   =   self;
        _pageCollectionView.dataSource =   self;
        [_pageCollectionView registerClass:[HGifFaceCell class] forCellWithReuseIdentifier:@"HGifFaceCellID"];
        
        
        [self addSubview:_pageCollectionView];
        
        [_pageCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.and.right.and.top.and.bottom.offset(0);
        }];
        
    }
    return self;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HGifFaceCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HGifFaceCellID" forIndexPath:indexPath];
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击");
    
    
}
@end
