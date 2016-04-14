//
//  WFAppJumpUtil.h
//  testAppJump
//
//  Created by wolvesqun on 15/3/17.
//  Copyright © 2015年 ibmlib. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFAppJumpUtil : NSObject

+ (NSString *)buildParameterStringWithDict:(NSDictionary *)dict;

+ (NSString *)getBundleIdentifier;
// - 获取源应用名称
+ (NSString *)getBundleName;

+ (NSString *)encodeUTF_8:(NSString *)source;
+ (NSString *)decodeUTF_8:(NSString *)source;

@end
