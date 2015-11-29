//
//  TopUICollectionView.m
//  MyEars
//
//  Created by hanya on 15/11/28.
//  Copyright © 2015年 hanya. All rights reserved.
//

#import "TopUICollectionView.h"
#import "MJExtension.h"
#import "TopModel.h"
#import "TOPCollectionViewCell.h"
#import "UIView+Extension.h"

@interface TopUICollectionView ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, strong) NSArray *list;

@end


@implementation TopUICollectionView

static NSString * ID = @"Identifier";

// 懒加载数据源
- (NSArray *)list {

    if (_list == nil) {
        // 加载plist文件
        
        NSString * path = [[NSBundle mainBundle] pathForResource:@"TopPlist" ofType:@"plist"];
        NSArray * temp = [[NSArray alloc] initWithContentsOfFile:path];
        
        NSMutableArray * muta = [NSMutableArray array];
        
        for (NSDictionary * dict in temp) {
            TopModel * model = [TopModel mj_objectWithKeyValues:dict];
            [muta addObject:model];
        }
        _list = [muta copy];
    }
    return _list;
}


// 3.重写构造方法,调用设置UI方法

- (instancetype)init
{
    
    // 重写构造方法,默认流水布局
    UICollectionViewFlowLayout * flow = [[UICollectionViewFlowLayout alloc] init];
    
    CGFloat itemW = (kScreenW - 7 * kTOPItemMargin ) / 6;
    CGFloat itemH = 32;
    
    
    flow.minimumInteritemSpacing = kTOPItemMargin ;
    flow.minimumLineSpacing      = kTOPItemMargin ;
    flow.scrollDirection         = UICollectionViewScrollDirectionHorizontal ;
    flow.sectionInset            = UIEdgeInsetsMake(0, 8, 0, 8);
    flow.itemSize                = CGSizeMake(itemW, itemH);
    
    if (self = [super initWithFrame:CGRectZero collectionViewLayout:flow]) {
        self.dataSource = self;
        self.delegate   = self;
    }
    
    self.backgroundColor = [UIColor blackColor];
    
    [self registerCell];
    
    // 设置宽度
    //self.width = self.list.count * itemW + (self.list.count + 1 )* kTOPItemMargin;
    return self;
}

#pragma mark 注册cell

- (void)registerCell {
    
    [self registerClass:[TOPCollectionViewCell class] forCellWithReuseIdentifier:ID];
}

#pragma MARK dataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return  self.list.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    TOPCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    TopModel * model = self.list[indexPath.item];
    cell.model = model;
    //NSLog(@"%zd",cell.userInteractionEnabled);
    
    return  cell;
}

#pragma mark delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

    TopModel * model = self.list[indexPath.item];
    
    NSLog(@"选中 %@---%zd",model.name,indexPath.item);
    
#warning 未完成
    // 选中后给tableView发送通知,刷新数据
    
    // 改变item中button的文字颜色,图标的显示与关闭
    
    
}

@end
