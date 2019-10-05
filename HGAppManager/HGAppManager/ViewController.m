//
//  ViewController.m
//  HGAppManager
//
//  Created  by hong.zhu on 2019/10/5
//  Copyright © 2019 hg. All rights reserved.
//  

#import "ViewController.h"
#import <HGUser/HGUserController.h>
#import <HGOrder/HGOrderController.h>

#import "HGBaseControllerProtocolImplementationApp.h"
#import "HGBaseControllerProtocolImplementationUser.h"
#import "HGBaseControllerProtocolImplementationOrder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.delegate = HGBaseControllerProtocolImplementationApp.sharedManager;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"App 中的控制器";
    self.hgLabel.text = @"App 中直接使用基类控制器";
    
    {
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"用户管理入口" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(business_user) forControlEvents:UIControlEventTouchUpInside];
        
        button.frame = CGRectMake(20, 300, 300, 100);
        button.backgroundColor = [UIColor purpleColor];
        
        [self.view addSubview:button];
    }
    
    
    {
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"订单管理入口" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(business_order) forControlEvents:UIControlEventTouchUpInside];
        
        button.frame = CGRectMake(20, 420, 300, 100);
        button.backgroundColor = [UIColor redColor];
        
        [self.view addSubview:button];
    }
    
}


// 进入用户管理
- (void)business_user {
    HGUserController *userVC = [HGUserController new];
    userVC.delegate = HGBaseControllerProtocolImplementationUser.sharedManager;
    [self.navigationController pushViewController:userVC animated:YES];
}

// 进入订单管理
- (void)business_order {
    HGOrderController *orderVC = [HGOrderController new];
    orderVC.delegate = HGBaseControllerProtocolImplementationOrder.sharedManager;
    [self.navigationController pushViewController:orderVC animated:YES];
}


@end
