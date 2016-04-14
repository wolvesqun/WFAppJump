//
//  WFSceneSessionActionCtroller.m
//  testAppJump
//
//  Created by mba on 16/3/18.
//  Copyright © 2015年 ibmlib. All rights reserved.
//

#import "WFSceneSessionActionCtroller.h"

@implementation WFSceneSessionActionCtroller

- (void)actionshare:(NSDictionary *)dict
{
    // 获取分享文件信息
    NSString *text = [WFRequestHelper getString:@"text"];
    
    for (NSString *key in dict.allKeys) {
        NSString *value = [dict objectForKey:key];
        NSLog(@"分享到用户 => key = %@, value = %@", key, value);
    }
    
}

@end


// [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"myApp://open/WXSceneSession/share?text=good"]];




// [[WFActionCtrollerContext getContext] setCtroller:[WFSceneSessionActionCtroller new] forKey:@"WXSceneSession"];