//
//  HomeCell.m
//  DropPerfect
//
//  Created by apple on 15/2/6.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "HomeCell.h"
@interface HomeCell()

@end
@implementation HomeCell

- (void)awakeFromNib {

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *homeCell = @"HomeCell";
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:homeCell];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:homeCell owner:self options:nil] firstObject];
    }
    return cell;
}
@end
