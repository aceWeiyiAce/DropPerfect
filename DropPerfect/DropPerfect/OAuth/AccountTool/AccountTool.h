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
- (void)saveAccount:(UserAccount *)account;

+ (void)saveAccount:(UserAccount *)account;
@end
