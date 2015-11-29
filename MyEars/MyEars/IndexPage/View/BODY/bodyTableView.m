//
//  bodyTableView.m
//  MyEars
//
//  Created by hanya on 15/11/28.
//  Copyright © 2015年 hanya. All rights reserved.
//

#import "bodyTableView.h"

@interface bodyTableView () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataList;

@end

@implementation bodyTableView

// 懒加载数据源
- (NSArray *)dataList {

    if (!_dataList) {
        
    }
    return _dataList;
}

- (instancetype)init {

    if (self = [super initWithFrame:CGRectZero style:UITableViewStylePlain]) {
        self.dataSource = self;
        self.dataSource = self;
    }
    
    return self;
}

#pragma mark datasource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataList.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString * Identifier = @"cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:Identifier forIndexPath:indexPath];
    if (cell == nil) {
        
    }
    // 模型赋值
    
    return cell;
}

#pragma mark delegate

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    return  nil;
}

@end
