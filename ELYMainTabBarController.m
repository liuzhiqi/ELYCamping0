//
//  ELYMainTabBarController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYMainTabBarController.h"
#import "ELYActivityViewController.h"
#import "ELYCampsiteViewController.h"
#import "ELYCustomViewController.h"
#import "ELYUserInfoViewController.h"
@interface ELYMainTabBarController ()

@end

@implementation ELYMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UINavigationController *nav1=[[UINavigationController alloc] initWithRootViewController:[[ELYCampsiteViewController alloc] init] ];
    nav1.title=@"营地";
    [nav1.tabBarItem setImage:[UIImage imageNamed:@"first"] ];
    
    UINavigationController *nav2=[[UINavigationController alloc] initWithRootViewController:[[ELYActivityViewController alloc] init] ];
    nav2.title=@"活动";
    [nav2.tabBarItem setImage:[UIImage imageNamed:@"second"] ];
    
    UINavigationController *nav3=[[UINavigationController alloc] initWithRootViewController:[[ELYCustomViewController alloc] init] ];
    nav3.title=@"定制";
    [nav3.tabBarItem setImage:[UIImage imageNamed:@"first"] ];
    
    UINavigationController *nav4=[[UINavigationController alloc] initWithRootViewController:[[ELYUserInfoViewController alloc] init] ];
    nav4.title=@"我的";
    [nav4.tabBarItem setImage:[UIImage imageNamed:@"second"] ];
    
    
    
    
    NSArray *viewC=[NSArray arrayWithObjects:nav1,nav2,nav3,nav4, nil];
    self.viewControllers =viewC;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
