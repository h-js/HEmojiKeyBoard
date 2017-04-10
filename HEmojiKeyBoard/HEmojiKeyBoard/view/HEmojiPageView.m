//
//  HEmojiPageView.m
//  HEmojiKeyBoard
//
//  Created by 俊松何 on 2017/4/7.
//  Copyright © 2017年 俊松何. All rights reserved.
//

#import "HEmojiPageView.h"
#import "Masonry.h"
#import "HEmojiCell.h"
#import "HGifFaceCell.h"
#import  "HEmojiManger.h"

#define ScreenW [UIScreen mainScreen].bounds.size.width
@interface HEmojiPageView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UICollectionView *pageCollectionView;

@end

@implementation HEmojiPageView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        // 计算间距
        CGFloat margin = (ScreenW - colsOfPage * emotionWH) / (colsOfPage + 1);
        layout.itemSize = CGSizeMake(emotionWH, emotionWH);
        layout.minimumInteritemSpacing = margin;
        layout.minimumLineSpacing = margin;
        layout.sectionInset = UIEdgeInsetsMake(margin, margin, 0, margin);
        
        _pageCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
        _pageCollectionView.scrollEnabled  = NO;
        _pageCollectionView.delegate   =   self;
        _pageCollectionView.dataSource =   self;
        [_pageCollectionView registerClass:[HEmojiCell class] forCellWithReuseIdentifier:@"HEmojiCellID"];
        
        
        [self addSubview:_pageCollectionView];
        _pageCollectionView.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_pageCollectionView];
        
        
        [_pageCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.and.right.and.top.and.bottom.offset(0);
        }];
        
    }
    return self;
}

- (void)setEmotions:(NSArray *)emotions
{
    _emotions = emotions;
    
    [self.pageCollectionView reloadData];
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.emotions.count + 1;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HEmojiCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HEmojiCellID" forIndexPath:indexPath];
    
    NSString *imageName = @"Emotion.bundle/delete";
    
    if (indexPath.row < _emotions.count) {
        imageName = [NSString stringWithFormat:@"Emoji.bundle/%@",_emotions[indexPath.row][@"face_image_name"]];
    }
    UIImage *image = [UIImage imageNamed:imageName];
    cell.emojiImage = image;
    
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击");
    
    
}

@end
