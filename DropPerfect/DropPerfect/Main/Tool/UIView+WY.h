//
//  UIView+WY.h
//  08-新浪微博
//
//  Created by apple on 14-8-31.
//  Copyright (c) 2014年 WY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WY)
// 在分类中的@property，不会自动实现get/set方法（只会声明）
// 在.m文件中找不到对应的方法
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@end
