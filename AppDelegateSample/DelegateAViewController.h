//
//  DelegateAViewController.h
//  AppDelegateSample
//
//  Created by kunren10 on 2014/02/19.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DelegateAViewController : UIViewController{
    
    //NSString *globalStrings01;
}

//グローバルフィールド入力
@property (weak, nonatomic) IBOutlet UITextField *globalStrings01;

// データ受け渡しアクションボタン
- (IBAction)Second:(id)sender;

@end
