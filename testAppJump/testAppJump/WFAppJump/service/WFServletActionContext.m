//
//  WFServletActionContext.m
//  testAppJump
//
//  Created by mba on 16/3/17.
//  Copyright © 2016年 ibmlib. All rights reserved.
//

#import "WFServletActionContext.h"



@interface WFServletActionContext ()

/*** request ***/
@property (strong, nonatomic) WFRequestServlet  *requestServlet;
/*** response ***/
@property (strong, nonatomic) WFResponseServlet *responseServlet;
/*** actionContext -> 处理器容器 ***/
@property (strong, nonatomic) WFActionCtrollerContext   *actionCtrollerContext;

@end

@implementation WFServletActionContext

#pragma mark - init
+ (instancetype)shareInstanced
{
    static WFServletActionContext *context = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(context == nil)
        {
            context = [WFServletActionContext new];
        }
    });
    return context;
}

- (instancetype)init
{
    if(self = [super init])
    {
        self.requestServlet = [[WFRequestServlet alloc] init];
        self.responseServlet = [[WFResponseServlet alloc] init];
        self.actionCtrollerContext = [WFActionCtrollerContext getContext];
    }
    return self;
}

#pragma mark - appDelegate 里调用
- (BOOL)handleURL:(NSURL *)URL
{
    BOOL bHandle = NO;
    
    NSString *URLString = URL.absoluteString;
    if(URLString.length > 0)
    {
        [self.requestServlet setOriginURLString:URLString];
        
        NSString *ctrollerKey = [self.requestServlet getCtroller];
        if(ctrollerKey.length > 0)
        {
            bHandle = YES;
            id actionCtrl = [self.actionCtrollerContext ctrollerForKey:ctrollerKey];
            NSString *actionKey = [self.requestServlet getAction];
            SEL actionSelector = NSSelectorFromString([NSString stringWithFormat:@"action%@", actionKey]);
            if([actionCtrl respondsToSelector:actionSelector])
            {
                [actionCtrl performSelector:actionSelector];
            }
            else if([actionCtrl respondsToSelector:@selector(actionExecute)])
            {
                // *** 默认处理
                [actionCtrl actionExecute];
            }
            
        }
//        NSString *actionKey = [self.requestServlet getActionKey];
//        if(actionKey && actionKey.length > 0)
//        {
//            id action = [self.actionCtrollerContext ctrollerForKey:actionKey];
//            [action execute];
//            bHandle = YES;
//        }
        
    }
    return bHandle;
}

#pragma mark - 获取容器相关参数
- (id)getRequestServlet
{
    return self.requestServlet;
}
- (id)getResponseServlet
{
    return self.responseServlet;
}

@end
