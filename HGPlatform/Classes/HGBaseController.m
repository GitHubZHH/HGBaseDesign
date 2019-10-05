//
//  HGBaseController.m
//  HGPlatform
//
//  Created  by hong.zhu on 2019/10/5
//  
//  

#import "HGBaseController.h"

@implementation HGBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 简单的控件
    UILabel *hgLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 130, 280, 100)];
    hgLabel.textAlignment = NSTextAlignmentCenter;
    hgLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:hgLabel];
    _hgLabel = hgLabel;
    
    // 默认试试灰色
    [self setupHGLableBackgroundColor];
    
    // 默认试试灰色
    [self setupBackgroundColor];
}

// 设置 hgLabel 背景色 (不同的项目 | 业务模块的背景色会不一样, 即将使用协议的方案实现在不同的项目中统一做配置)
- (void)setupHGLableBackgroundColor {
    UIColor *color = nil;
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(fetchHGLabelBackgroundColorWith:)]) {
        color = [self.delegate fetchHGLabelBackgroundColorWith:self];
    }
    
    if (!color) {
        color = [UIColor grayColor];
    }
    
    _hgLabel.backgroundColor = color;
}

// 设置基类的视图背景色 (不同的项目的背景色会不一样, 即将使用分类的方案实现在不同的项目中统一做配置)
- (void)setupBackgroundColor {
    self.view.backgroundColor = [UIColor grayColor];
}

@end
