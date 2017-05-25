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
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"JKStatisticsInfo" ofType:@"plist"];
    NSDictionary *infoDic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSString *umengAppKey = infoDic[@"UmengAppKey"];
    
    NSCAssert(umengAppKey.length != 0, @"请在 JKStatisticsInfo.plist 文件中添加 友盟的AppKey如果没有这个文件请创建，key=UmengAppKey value = 你的app的友盟key");
    
    UMConfigInstance.appKey = umengAppKey;
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
