//
//  IndexViewController.m
//  MyEars
//
//  Created by hanya on 15/11/28.
//  Copyright © 2015年 hanya. All rights reserved.
//

#import "IndexViewController.h"
#import "Masonry.h"
#import "TopUICollectionView.h"



@interface IndexViewController ()

@property (nonatomic, weak) TopUICollectionView *topView;

@end

@implementation IndexViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self setupUI];
    
}

// 设置UI
- (void)setupUI {

    TopUICollectionView * topView = [[TopUICollectionView alloc] init];
    [self.view addSubview:topView];
    self.topView = topView;
    
    [self.topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(20);
        make.left.equalTo(self.view.mas_left) ;
        make.height.mas_equalTo(48);
        make.width.mas_equalTo(kScreenW);
    }];
    
    NSLog(@"%@",NSStringFromCGRect(self.topView.frame));

}

- (void)viewDidLayoutSubviews {

    [super viewDidLayoutSubviews];
    
    NSLog(@"111111%@",NSStringFromCGRect(self.topView.frame));

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
