//
//  DelegateAViewController.m
//  AppDelegateSample
//
//  Created by kunren10 on 2014/02/19.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "DelegateAViewController.h"
// Delegate画面遷移用
#import "AppDelegate.h"

@interface DelegateAViewController ()

@end

@implementation DelegateAViewController{
    
    
}

@synthesize globalStrings01;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

#pragma mark - appDelegateに転送
- (IBAction)Second:(id)sender {
    
    // delegateデータを送る準備
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    // appDelegate.globalStrings01 転送
    appDelegate.globalStrings01 =  self.globalStrings01.text;
    
    //ソフトウェアキーボードの非表示
    [self.globalStrings01 resignFirstResponder];

}
@end
