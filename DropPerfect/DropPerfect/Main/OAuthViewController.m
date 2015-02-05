//
//  ViewController.m
//  DropPerfect
//
//  Created by apple on 15/2/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "OAuthViewController.h"

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
        NSLog(@"YES");
    }

    return YES;
}

@end
