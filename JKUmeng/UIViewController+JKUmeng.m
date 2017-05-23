//
//  UIViewController+JKUmeng.m
//  test
//
//  Created by 刘伟强 on 2017/5/19.
//  Copyright © 2017年 刘伟强. All rights reserved.
//

#import "UIViewController+JKUmeng.h"
#import "UMMobClick/MobClick.h"
#import "Aspects.h"
@implementation UIViewController (JKUmeng)



+(void)load{
    
    NSCAssert(![UmengAppKey isEqualToString:@"XXXXXXXXXXXXXXXXXXXXXX"], @"请设置友盟统计的key");
    
    UMConfigInstance.appKey = UmengAppKey;
    [MobClick startWithConfigure:UMConfigInstance];
    [MobClick setAppVersion:kSoftwareVersion_2017_5_19];
    
    [UIViewController aspect_hookSelector:@selector(viewDidAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo){
        [MobClick beginLogPageView:NSStringFromClass([aspectInfo.instance class])];;
    } error:nil];
    
    [UIViewController aspect_hookSelector:@selector(viewDidDisappear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo){
        [MobClick endLogPageView:NSStringFromClass([aspectInfo.instance class])];
    } error:nil];
    
}

@end
