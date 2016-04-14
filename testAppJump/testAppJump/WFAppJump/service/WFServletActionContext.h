//
//  WFServletActionContext.h
//  testAppJump
//
//  Created by wolvesqun on 15/3/17.
//  Copyright © 2015年 ibmlib. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WFRequestServlet.h"
#import "WFResponseServlet.h"
#import "WFActionCtrollerContext.h"

@interface WFServletActionContext : NSObject

+ (instancetype)shareInstanced;

- (BOOL)handleURL:(NSURL *)URL;

- (id)getRequestServlet;

- (id)getResponseServlet;

@end
