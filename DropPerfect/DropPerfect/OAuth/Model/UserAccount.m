//
//  UserAccount.m
//  DropPerfect
//
//  Created by apple on 15/2/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "UserAccount.h"

@implementation UserAccount

- (instancetype)initWithDict:(NSDictionary *)dict{
    [self setValuesForKeysWithDictionary:dict];
    return self;
}

+ (instancetype)initWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}
//归档保存时调用

- (void)encodeWithCoder:(NSCoder *)enCoder{
    [enCoder encodeObject:self.expires_in forKey:@"expires_in"];
    [enCoder encodeObject:self.access_token forKey:@"access_token"];
    [enCoder encodeObject:self.uid forKey:@"uid"];
    [enCoder encodeObject:self.remind_in forKey:@"remind_in"];
}
// 解档读取
- (id)initWithCoder:(NSCoder *)Decoder{
    if (self = [super init]) {
        self.expires_in = [Decoder decodeObjectForKey:@"expires_in"];
        self.uid = [Decoder decodeObjectForKey:@"uid"];
        self.remind_in = [Decoder decodeObjectForKey:@"remind_in"];
        self.access_token = [Decoder decodeObjectForKey:@"access_token"];
    }
    return self;
}
@end
