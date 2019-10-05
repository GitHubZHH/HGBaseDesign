//
//  HGBaseControllerProtocolImplementationOrder.m
//  HGAppManager
//
//  Created  by hong.zhu on 2019/10/5
//  Copyright © 2019 hg. All rights reserved.
//  

#import "HGBaseControllerProtocolImplementationOrder.h"

@implementation HGBaseControllerProtocolImplementationOrder

+ (instancetype)sharedManager {
    static HGBaseControllerProtocolImplementationOrder *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [self new];
    });
    return manager;
}

#pragma mark - HGBaseControllerProtocol
- (UIColor*)fetchHGLabelBackgroundColorWith:(HGBaseController*)baseController {
//    if ([baseController isKindOfClass:XXXXX]) {
//        // 还可以这么细分
//    }
    
    return [UIColor purpleColor];
}

@end
