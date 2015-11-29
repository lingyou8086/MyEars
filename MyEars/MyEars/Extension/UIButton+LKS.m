//
//  UIButton+LKS.m
//  MyEars
//
//  Created by hanya on 15/11/28.
//  Copyright © 2015年 hanya. All rights reserved.
//

#import "UIButton+LKS.h"

@implementation UIButton (LKS)

+ (instancetype)buttonWithTitle:(NSString *)name andImgName:(NSString *)img {

    UIButton * btn = [[UIButton alloc] init];
    [btn setTitle:name forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    
    if (img) {
        [btn setImage:[UIImage imageNamed:img] forState:UIControlStateNormal];
    }
    
    [btn sizeToFit];
    return btn;
}

@end
