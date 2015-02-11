//
//  HomeViewController.m
//  DropPerfect
//
//  Created by apple on 15/2/6.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "HomeViewController.h"
#import "AFNetworking.h"
#import "AccountTool.h"
#import "UserAccount.h"
#import "HomeCell.h"
#import "WYStatus.h"

//#import "MJExtension.h"
@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray *statuses;
@property (weak, nonatomic) IBOutlet UITableView *tbHome;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)loadData{
       AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    
    param[@"access_token"] = [AccountTool getAccount].access_token;
    param[@"count"] = @1;
    
    NSString *url = @"https://api.weibo.com/2/statuses/home_timeline.json";
    [manager GET:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", responseObject);
        
//        self.statuses = [WYStatus objectArrayWithKeyValuesArray:responseObject[@"statuses"]];
//        [self.tbHome reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }];

}
#pragma  mark - tableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"%ld", self.statuses.count);
    return self.statuses.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeCell *cell = [HomeCell cellWithTableView:tableView];
    cell.status =  [WYStatus statusWithDict:self.statuses[indexPath.row]];
    return cell;
}
@end
