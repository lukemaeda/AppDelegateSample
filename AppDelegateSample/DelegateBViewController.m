//
//  DelegateBViewController.m
//  AppDelegateSample
//
//  Created by kunren10 on 2014/02/19.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "DelegateBViewController.h"
// Delegate画面遷移用
#import "AppDelegate.h"

@interface DelegateBViewController ()

@end

@implementation DelegateBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - appDelegateに転送
// View が表示される直前に呼ばれるメソッド
// タブ等の切り替え等により、画面に表示されるたびに呼び出されます。
// タブが切り替わるたびに何度でも呼ばれます。
/*
    iPhone開発 UIViewController ライフサイクル viewDidLoad viewWillAppear viewDidAppear viewWillDisappear viewDidDisappear ios 逆引き サンプル
    http://blog.77jp.net/iphone%E9%96%8B%E7%99%BA-uiviewcontroller-%E3%83%A9%E3%82%A4%E3%83%95%E3%82%B5%E3%82%A4%E3%82%AF%E3%83%AB-viewdidload-viewwillappear-viewdidappear-viewwilldisappear-viewdiddisappear-ios-%E9%80%86
*/
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // delegateデータを受ける
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    self.localLabel01.text = appDelegate. globalStrings01;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
