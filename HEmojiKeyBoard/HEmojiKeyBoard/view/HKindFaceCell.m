//
//  HKindFaceCell.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HKindFaceCell.h"
#import "HGifFacePageView.h"
#import "Masonry.h"
@interface HKindFaceCell()<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic,strong) UICollectionView *collectionView;

@property(nonatomic,strong) NSMutableArray *dataSource;

@end

@implementation HKindFaceCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
        _collectionView.delegate   =   self;
        _collectionView.dataSource =   self;
        [_collectionView registerClass:[HGifFacePageView class] forCellWithReuseIdentifier:@"HGifFacePageViewID"];
        
        [self addSubview:_collectionView];
        
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.and.right.and.top.and.bottom.offset(0);
        }];

    }
    return self;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.model.faceArray.count / 8;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
//    HKindFaceModel *model =  ;
    
    return nil;
    //    HGifFaceCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HGifFaceCellID" forIndexPath:indexPath];
    //    return cell;
}

-(void)setModel:(HKindFaceModel *)model
{
    _model = model;
    
    


}


@end
