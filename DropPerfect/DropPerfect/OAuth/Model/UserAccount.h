//
//  UserAccount.h
//  DropPerfect
//
//  Created by apple on 15/2/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserAccount : NSObject<NSCoding>
/*
    "access_token" = "2.00ppehlFyqnnZC23bd13d39bjpaeVD";
    "expires_in" = 108658;
    "remind_in" = 108658;
    uid = 5285557029;
 
 */

/**
    用于调用access_token，接口获取授权后的access token
 */
@property (nonatomic, copy) NSString *access_token;
/**
    access_token的生命周期，单位是秒数。
 */
@property (nonatomic, copy) NSString *expires_in;
/**
    access_token的生命周期（该参数即将废弃，开发者请使用expires_in）
*/
@property (nonatomic, copy) NSString *remind_in;
/**
    当前授权用户的UID
 */
@property (nonatomic, copy) NSString *uid;
- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)initWithDict:(NSDictionary *)dict;
@end
