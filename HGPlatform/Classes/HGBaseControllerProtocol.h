//
//  HGBaseControllerProtocol.h
//  HGPlatform
//
//  Created  by hong.zhu on 2019/10/5
//  
//  

#import <UIKit/UIKit.h>

@class HGBaseController;

NS_ASSUME_NONNULL_BEGIN

/// 基类控制器协议
@protocol HGBaseControllerProtocol <NSObject>

/// 获取某个控制的 hgLabel 控件的背景色
- (UIColor*)fetchHGLabelBackgroundColorWith:(HGBaseController*)baseController;

@end

NS_ASSUME_NONNULL_END
