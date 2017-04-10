//
//  HEmojiKindCell.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HEmojiKindCell.h"
#import "HEmojiPageView.h"
#import "HEmojiManger.h"
#import "Masonry.h"
#define ScreenW [UIScreen mainScreen].bounds.size.width
@interface HEmojiKindCell()<UICollectionViewDataSource,UICollectionViewDelegate,UIScrollViewDelegate,UICollectionViewDelegateFlowLayout>
@property (strong, nonatomic)  UICollectionView *collectionView;
@property (strong, nonatomic)  UIPageControl *pageControl;

@end

@implementation HEmojiKindCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self makeUI];
    }
    return self;
}
-(void)makeUI
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    layout.itemSize = CGSizeMake(ScreenW, 250);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;

    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
    [_collectionView registerClass:[HEmojiPageView class] forCellWithReuseIdentifier:@"HEmojiPageViewID"];
    _collectionView.pagingEnabled = YES;
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    
    _collectionView.backgroundColor = [UIColor clearColor];
    [self addSubview:_collectionView];
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self addSubview:_pageControl];
    
    [_pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).offset(-10);
        make.centerX.mas_equalTo(self.mas_centerX).offset(0);
        
    }];
    
    
    
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.and.top.and.bottom.offset(0);
    }];
}

#pragma mark - UICollectionViewDataSource
// 返回多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

// 返回每组多少行
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger page = [HEmojiManger emotionPage];
    _pageControl.numberOfPages = page;
    return page;
}

// 返回cell外观
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HEmojiPageView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HEmojiPageViewID" forIndexPath:indexPath];
    
    cell.emotions = [HEmojiManger emotionsOfPage:indexPath.row];
    
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(ScreenW, self.frame.size.height);
    
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger page = scrollView.contentOffset.x / self.bounds.size.width;
    
    self.pageControl.currentPage = page;
}

@end
