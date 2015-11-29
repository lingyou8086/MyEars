//
//  ViewController.m
//  MyEars
//
//  Created by hanya on 15/11/28.
//  Copyright © 2015年 hanya. All rights reserved.
//

#import "ViewController.h"
#import "IndexViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {

    if (self = [super init]) {
        [self loadViews];
    }
    
    return self;
}

// 加载子控制器
- (void)loadViews {

    IndexViewController * indexVC = [[IndexViewController alloc] init];
    indexVC.tabBarItem.title = @"主页";
    
    [self addChildViewController:indexVC];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
