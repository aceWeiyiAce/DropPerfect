//
//  HomeCell.m
//  DropPerfect
//
//  Created by apple on 15/2/6.
//  Copyright (c) 2015年 apple. All rights reserved.
//
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#import "HomeCell.h"
#import "UIView+WY.h"
#import "WYStatus.h"
#import "WYUser.h"
@interface HomeCell()
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *sourceLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end
@implementation HomeCell

- (void)awakeFromNib {
    self.icon.frame = CGRectMake(10, 10, 45, 45);
    self.nameLabel.x = CGRectGetMaxY(self.icon.frame);
    self.nameLabel.y = self.icon.y;

//    CGSize mSize = CGSizeMake(ScreenWidth - 20,999);
//    size = [NSString heightForString:str2 Size:mSize Font:[UIFont systemFontOfSize:lbContent_Font]].size;
//    self.lbContent.frame = CGRectMake(10, (size.height > 21?20:22.5) + self.imgHuaTi.originY + self.imgHuaTi.height, ScreenWidth - 20, size.height);
//    self.lbContent.text = str2;
//    
//    size = [NSString heightForString:str3 Size:mSize Font:[UIFont systemFontOfSize:lbAt_Font]].size;
//    CGSize nameMaxSize = CGSizeMake(ScreenWidth, 999);
    [self.nameLabel sizeToFit];
}
+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *homeCell = @"HomeCell";

    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:homeCell];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:homeCell owner:self options:nil] firstObject];
    }
    return cell;
}

- (void)setStatus:(WYStatus *)status{
    _status = status;
    NSString *iconName = status.user.profile_image_url;
    self.icon.image = [UIImage imageNamed:iconName];
    
    self.nameLabel.text = status.user.name;
    NSLog(@"%@", self.nameLabel.text);
    
}
@end
