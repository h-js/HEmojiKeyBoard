//
//  HKindEmojiCell.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HKindEmojiCell.h"
#import "Masonry.h"
#import "HEmojiPageView.h"
#import "HEmojiManger.h"
@interface HKindEmojiCell()<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic,strong) UICollectionView *collectionView;

@property(nonatomic,strong) NSMutableArray *dataSource;

@end

@implementation HKindEmojiCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
        
        _collectionView.delegate   =   self;
        _collectionView.dataSource =   self;
        _collectionView.backgroundColor = [UIColor redColor];
        [_collectionView registerClass:[HEmojiPageView class] forCellWithReuseIdentifier:@"HEmojiPageViewID"];
        
        [self addSubview:_collectionView];
        
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.and.right.and.top.and.bottom.offset(0);
        }];
        
    }
    return self;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [HEmojiManger emotionPage];
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    HEmojiPageView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HEmojiPageViewID" forIndexPath:indexPath];

    cell.emotions = [HEmojiManger emotionsOfPage:indexPath.row];
    
    
    return cell;

}

-(void)setModel:(HKindFaceModel *)model
{
    _model = model;
    
    
    
    
}

@end
