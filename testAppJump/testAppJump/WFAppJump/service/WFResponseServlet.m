//
//  WFResponseServlet.m
//  testAppJump
//
//  Created by mba on 16/3/17.
//  Copyright © 2016年 ibmlib. All rights reserved.
//

#import "WFResponseServlet.h"

@implementation WFResponseServlet

- (void)sendMessageToAppWithAppKey:(NSString *)appKey
                         andModule:(NSString *)module
                       andCtroller:(NSString *)ctroller
                         andAction:(NSString *)action
                      andParameter:(NSDictionary *)parameter
{
    if(appKey.length > 0 && module.length > 0 && ctroller.length > 0 && action.length > 0)
    {
        NSString *paramString = [WFAppJumpUtil buildParameterStringWithDict:parameter];
        NSString *URLString = [NSString stringWithFormat:@"%@://%@/%@/%@?%@",appKey, module, ctroller, action, paramString];
        [self sendMessageToAppWithURLString:URLString];
    }
}

- (void)sendBundleIdNameMessageToAppWithAppKey:(NSString *)appKey
                                     andModule:(NSString *)module
                                   andCtroller:(NSString *)ctroller
                                     andAction:(NSString *)action
                                  andParameter:(NSDictionary *)parameter
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if(parameter == nil)
    {
        [dict setDictionary:parameter];
    }
    [dict setObject:[WFAppJumpUtil getBundleIdentifier] forKey:kWFBundleIdentifier];
    [dict setObject:[WFAppJumpUtil getBundleName] forKey:kWFBundleDisplayName];
    
    [self sendMessageToAppWithAppKey:appKey andModule:module andCtroller:ctroller andAction:action andParameter:dict];
}

- (void)sendMessageToAppWithURLString:(NSString *)URLString
{
    if(URLString.length > 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:URLString]];
    }
}

@end
