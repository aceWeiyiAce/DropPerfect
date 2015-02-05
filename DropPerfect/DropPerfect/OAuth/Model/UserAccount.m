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
@end
