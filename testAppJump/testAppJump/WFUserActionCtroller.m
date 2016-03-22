//
//  WFUserActionCtroller.m
//  testAppJump
//
//  Created by mba on 16/3/18.
//  Copyright © 2016年 ibmlib. All rights reserved.
//

#import "WFUserActionCtroller.h"

@implementation WFUserActionCtroller

- (void)actionRegister:(NSDictionary *)param
{
    NSLog(@"=====> actionRegister, username = %@", [WFRequestHelper getString:@"username"]);
}



@end
