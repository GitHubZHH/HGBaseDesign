//
//  HGBaseControllerProtocolImplementationApp.h
//  HGAppManager
//
//  Created  by hong.zhu on 2019/10/5
//  Copyright © 2019 hg. All rights reserved.
//  

#import <Foundation/Foundation.h>
#import <HGPlatform/HGBaseControllerProtocol.h>

NS_ASSUME_NONNULL_BEGIN

@interface HGBaseControllerProtocolImplementationApp : NSObject <HGBaseControllerProtocol>

+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
