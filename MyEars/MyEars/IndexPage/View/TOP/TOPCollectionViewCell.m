//
//  TOPCollectionViewCell.m
//  MyEars
//
//  Created by hanya on 15/11/28.
//  Copyright © 2015年 hanya. All rights reserved.
//

#import "TOPCollectionViewCell.h"
#import "UIButton+LKS.h"

@interface TOPCollectionViewCell ()

@property (nonatomic, strong) UIButton *btn;

@end

@implementation TOPCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.btn = [[UIButton alloc] init];
        // 取消button的用户交互,否则会影响cell的点击事件
        self.btn.userInteractionEnabled = NO ;
        [self.contentView addSubview:self.btn];
    }
    return self;


}

- (void)setModel:(TopModel *)model {

    _model = model ;
    
    [self.btn setTitle:model.name forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    
    if (model.icon) {
        [self.btn setImage:[UIImage imageNamed:model.icon] forState:UIControlStateNormal];
    }
    
    [self.btn sizeToFit];}


@end
