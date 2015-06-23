//
//  AppDelegate.h
//  AppDelegateSample
//
//  Created by kunren10 on 2014/02/19.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    //NSString *globalStrings01;
    
}

@property (strong, nonatomic) UIWindow *window;

// プロパティ化して外部から参照できるようにします。
@property (strong, nonatomic)  NSString *globalStrings01;

@end
