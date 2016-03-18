//
//  WFSceneSessionActionCtroller.m
//  testAppJump
//
//  Created by mba on 16/3/18.
//  Copyright © 2016年 ibmlib. All rights reserved.
//

#import "WFSceneSessionActionCtroller.h"

@implementation WFSceneSessionActionCtroller

- (void)actionshare
{
    // 获取分享文件信息
    NSString *text = [WFRequestHelper getString:@"text"];
    
    NSLog(@"分享到用户 => %@", text);
}

@end

// [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"myApp://open/WXSceneSession/share?text=good"]];




// [[WFActionCtrollerContext getContext] setCtroller:[WFSceneSessionActionCtroller new] forKey:@"WXSceneSession"];