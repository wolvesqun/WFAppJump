//
//  AppDelegate.m
//  testAppJump
//
//  Created by wolvesqun on 15/3/17.
//  Copyright © 2015年 ibmlib. All rights reserved.
//

#import "AppDelegate.h"
#import "WFServletActionContext.h"
#import "WFMyActionCtroller.h"
#import "WFAppJumpUtil.h"
#import "WFUserActionCtroller.h"
#import "WFSceneSessionActionCtroller.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 添加处理器
    [[WFActionCtrollerContext getContext] setCtroller:[WFSceneSessionActionCtroller new] forKey:@"WXSceneSession"];
    [[WFActionCtrollerContext getContext] setCtroller:[WFUserActionCtroller new] forKey:@"user"];
    
    //[[WFServletActionContext shareInstanced] handleURL:[NSURL URLWithString:@"myApp://open/user/register?username=u1"]];
    return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    // 请求拦截
    if([[WFServletActionContext shareInstanced] handleURL:url])
    {
        return YES;
    }
    return NO;
}

@end
