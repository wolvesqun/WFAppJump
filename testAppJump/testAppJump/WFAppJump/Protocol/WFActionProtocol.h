//
//  WFActionProtocol.h
//  testAppJump
//
//  Created by wolvesqun on 15/3/17.
//  Copyright © 2015年 ibmlib. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WFRequestServlet.h"

@protocol WFActionProtocol <NSObject>

@optional
/**
 *  如果找不到action，就默认执行这个方法
 */
- (void)actionExecute;


@end
