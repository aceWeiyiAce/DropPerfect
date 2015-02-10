//
//  ViewController.m
//  DropPerfect
//
//  Created by apple on 15/2/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "OAuthViewController.h"
#import "AFNetworking.h"
#import "UserAccount.h"
#import "AccountTool.h"
#import "HomeViewController.h"
@interface OAuthViewController ()<UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;
@end
/*  
    App Key：2361307136
    App Secret：0d1b1d639fc359a4ead658fd987c15b4
 
    授权回调页：http://ios.itcast.cn
    取消授权回调页：http://ios.itcast.cn
 
    643055866@qq.com
    ios4762450
 
    yy__cf__ww@163.com
 
 */
@implementation OAuthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.view = self.webView;
    self.webView.delegate = self;
    NSURL *url = [NSURL URLWithString:@"https://api.weibo.com/oauth2/authorize?client_id=2361307136&redirect_uri=http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    NSLog(@"%@", request.URL.absoluteString);
    NSString *urlStr = request.URL.absoluteString;
    NSRange range = [urlStr rangeOfString:@"code="];
    
    if (range.location != NSNotFound) {
        NSInteger index = range.length + range.location;
        NSString *codeStr = [urlStr substringFromIndex:index];
        
        [self getAccessToken:codeStr];
    }

    return YES;
}
- (void)getAccessToken:(NSString *)codeStr{
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    /*
     client_id	true	string	申请应用时分配的AppKey。
     client_secret	true	string	申请应用时分配的AppSecret。
     grant_type	true	string	请求的类型，填写authorization_code
     
     grant_type为authorization_code时
     必选	类型及范围	说明
     code	true	string	调用authorize获得的code值。
     redirect_uri	true	string	回调地址，需需与注册应用里的回调地址一致。
     */
    NSString *url = @"https://api.weibo.com/oauth2/access_token";
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    param[@"client_id"] = @"2361307136";
    param[@"client_secret"] = @"0d1b1d639fc359a4ead658fd987c15b4";
    param[@"grant_type"] = @"authorization_code";
    param[@"code"] = codeStr;
    param[@"redirect_uri"] = @"http://www.baidu.com";
    [manger POST:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", responseObject);
        UserAccount *account = [UserAccount accountWithDict:responseObject];
        [AccountTool saveAccount:account];
        /*
        responseObject = {
         
            "access_token" = "2.00ppehlFyqnnZC23bd13d39bjpaeVD";
            "expires_in" = 108658;
            "remind_in" = 108658;
            uid = 5285557029;
         
         }
         */
        HomeViewController *vc = [[HomeViewController alloc] init];
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        window.rootViewController = vc;
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }];
}
@end
