//
//  UIViewController+JKUmeng.h
//  test
//
//  Created by 刘伟强 on 2017/5/19.
//  Copyright © 2017年 刘伟强. All rights reserved.
//


#import <UIKit/UIKit.h>

//UmnegKey
#define UmengAppKey                     @"XXXXXXXXXXXXXXXX"

/** 获取APP的版本号 */
#define kSoftwareVersion_2017_5_19     ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"])

/**
 友盟统计页面统计 
 */
@interface UIViewController (JKUmeng)

@end
