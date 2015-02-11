//
//  HomeCell.h
//  DropPerfect
//
//  Created by apple on 15/2/6.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WYStatus;
@interface HomeCell : UITableViewCell

@property (nonatomic, strong) WYStatus *status;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
