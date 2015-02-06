//
//  AccountTool.h
//  DropPerfect
//
//  Created by apple on 15/2/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserAccount;
@interface AccountTool : NSObject
+ (BOOL)saveAccount:(UserAccount *)account;

+ (UserAccount *)getAccount;
@end
