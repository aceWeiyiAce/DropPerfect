//
//  WYUser.h
//  DropPerfect
//
//  Created by apple on 15/2/6.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WYUser : NSObject
/*
 user =             {
  idstr = 3948352701;
 mbrank = 4;
 mbtype = 12;
  name = "\U9ad8\U5206\U7535\U5f71\U540d\U5355";
 "profile_image_url" = "http://tp2.sinaimg.cn/3948352701/50/5682433264/0";
 */


/**
*  用户头像地址（中图），50×50像素
*/
@property (nonatomic, copy) NSString *profile_image_url;
/**
 *  友好显示名称
 */
@property (nonatomic, copy) NSString *name;
/**
 *  字符串型的用户UID
 */
@property (nonatomic, copy) NSString *idstr;
/**
 *  会员类型, 如果大于2就是会员
 */
@property (nonatomic, assign) int mbtype;
/**
 *  会员等级
 */
@property (nonatomic, assign) int mbmark;
@end
