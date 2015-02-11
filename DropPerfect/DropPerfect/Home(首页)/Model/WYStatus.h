//
//  WYStatus.h
//  DropPerfect
//
//  Created by apple on 15/2/6.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WYUser.h"
@interface WYStatus : NSObject
/*
 "attitudes_count" = 0;
 "created_at" = "Fri Feb 06 10:00:21 +0800 2015";
 "reposts_count" = 0;
 "comments_count" = 0;
 idstr = 3807188869122955;
 "pic_urls" =             (
 {
 "thumbnail_pic" = "http://ww4.sinaimg.cn/thumbnail/eb5714bdjw1eozepl5om0j20hs0iun1z.jpg";
 },
 {
 "thumbnail_pic" = "http://ww1.sinaimg.cn/thumbnail/eb5714bdjw1eozepm5s6kj20hs0iutdx.jpg";
 }
 );
 source = "<a href=\"http://app.weibo.com/t/feed/2o92Kh\" rel=\"nofollow\">vivo_X5Max</a>";
 
 text = "\U3010\U8ddf\U77409\U90e8\U7535\U5f71\U53bb\U65c5\U884c\U3011\U4f60\U770b\U8fc7\U4e86\U8bb8\U591a\U7f8e\U666f\Uff0c\U4f60\U770b\U8fc7\U4e86\U8bb8\U591a\U7f8e\U5973\Uff0c\U4f60\U8ff7\U5931\U5728\U5730\U56fe\U4e0a\U6bcf\U4e00\U9053\U77ed\U6682\U7684\U5149\U9634\Uff0c\U4f60\U54c1\U5c1d\U4e86\U591c\U7684\U5df4\U9ece\Uff0c\U4f60\U8e0f\U8fc7\U4e0b\U96ea\U7684\U5317\U4eac\Uff0c\U4f60\U7559\U604b\U7535\U5f71\U91cc\U7f8e\U4e3d\U7684\U4e0d\U771f\U5b9e\U7684\U573a\U666f\U3002";
 
 user = {*******};
 retweeted_status = ;
 */
/**
    创建时间
 */
@property (nonatomic, copy) NSString *created_at;
/**
    转发数
 */
@property (nonatomic, strong) NSNumber *reposts_count;
/**
    评论数
 */
@property (nonatomic, strong) NSNumber *comments_count;
/**
    点赞数
 */
@property (nonatomic, strong) NSNumber *attitudes_count;
/**
    字符串型的微博ID
 */
@property (nonatomic, copy) NSString *idstr;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, copy) NSString *text;
/**
    评论作者的用户信息字段
*/
@property (nonatomic, strong) WYUser *user;
/**
    被转发的原微博信息字段，当该微博为转发微博时返回
 */
@property (nonatomic, strong) WYStatus *retweeted_status;

@property (nonatomic, strong) NSArray *pic_urls;
- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)statusWithDict:(NSDictionary *)dict;
@end
