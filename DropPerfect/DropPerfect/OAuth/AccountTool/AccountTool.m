//
//  AccountTool.m
//  DropPerfect
//
//  Created by apple on 15/2/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//
#define KFilePath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"account.data"]
#import "AccountTool.h"
#import "UserAccount.h"
@implementation AccountTool
+ (BOOL)saveAccount:(UserAccount *)account{
    NSLog(@"%@", KFilePath);
    return [NSKeyedArchiver archiveRootObject:account toFile:KFilePath];
}
+ (UserAccount *)getAccount{
    UserAccount *account = [NSKeyedUnarchiver unarchiveObjectWithFile:KFilePath];
    return account;
}
@end
