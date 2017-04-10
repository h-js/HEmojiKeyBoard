//
//  HEmojiKeyBoardView.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HEmojiKeyBoardView.h"
#import "HEmojiPageView.h"
#import "HGifFacePageView.h"
#import "Masonry.h"
#import "HKindFaceModel.h"

#import "HKindFaceCell.h"
#import "HKindEmojiCell.h"
#import "HEmojiKindCell.h"
#define ScreenW [UIScreen mainScreen].bounds.size.width
@interface HEmojiKeyBoardView()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic,strong) UICollectionView *KindCollectionView;


@end

@implementation HEmojiKeyBoardView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        self.backgroundColor = [UIColor brownColor];
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
     
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake(ScreenW, 210);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        
        _KindCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
        _KindCollectionView.delegate   =   self;
        _KindCollectionView.dataSource =   self;
        _KindCollectionView.pagingEnabled =YES;
        _KindCollectionView.backgroundColor = [UIColor whiteColor];
//        _KindCollectionView.
        
        [_KindCollectionView registerClass:[HEmojiKindCell class] forCellWithReuseIdentifier:@"HEmojiKindCellID"];
//         [_KindCollectionView registerClass:[HKindEmojiCell class] forCellWithReuseIdentifier:@"HKindEmojiCellID"];
        
        [self addSubview:_KindCollectionView];
        
        [_KindCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.mas_equalTo(self.mas_left).offset(0);
            make.right.mas_equalTo(self.mas_right).offset(0);
            make.top.mas_equalTo(self.mas_top).offset(0);
            make.bottom.mas_equalTo(self.mas_bottom).offset(0);

        }];
        
        _KindCollectionView.backgroundColor = [UIColor greenColor];
    }
    return self;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    HEmojiKindCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HEmojiKindCellID" forIndexPath:indexPath];
    return cell;

}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(ScreenW, self.frame.size.height);

}

@end
