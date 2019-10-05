//
//  HGBaseController.h
//  HGPlatform
//
//  Created  by hong.zhu on 2019/10/5
//  
//  

#import <UIKit/UIKit.h>
#import "HGBaseControllerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HGBaseController : UIViewController

/// 协议实例
@property (nonatomic, weak) id<HGBaseControllerProtocol> delegate;
/**
 label
 */
@property (nonatomic, strong, readonly) UILabel *hgLabel;

@end

NS_ASSUME_NONNULL_END
