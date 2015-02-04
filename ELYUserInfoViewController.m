//
//  ELYUserInfoViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYUserInfoViewController.h"
#import "ELYMyFavoritesViewController.h"
#import "ELYMessageListViewController.h"
#import "ELYUserInfoDetailViewController.h"
#import "ELYOrderListViewController.h"
@interface ELYUserInfoViewController ()
- (IBAction)pushMessage:(id)sender;
- (IBAction)editInfo:(id)sender;
- (IBAction)paidOrder:(id)sender;
- (IBAction)unpaidOrder:(id)sender;
- (IBAction)otherOrder:(id)sender;
- (IBAction)myFavorite:(id)sender;


@end

@implementation ELYUserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"我的账户";
    
    
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)pushMessage:(id)sender {
    
    ELYMessageListViewController *pushView=[[ELYMessageListViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];

}

- (IBAction)editInfo:(id)sender {
    ELYUserInfoDetailViewController *pushView=[[ELYUserInfoDetailViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
}

- (IBAction)paidOrder:(id)sender {
    ELYOrderListViewController *pushView=[[ELYOrderListViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
    
}

- (IBAction)unpaidOrder:(id)sender {
    
    ELYOrderListViewController *pushView=[[ELYOrderListViewController alloc] init];
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
}

- (IBAction)otherOrder:(id)sender {
    ELYOrderListViewController *pushView=[[ELYOrderListViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
}

- (IBAction)myFavorite:(id)sender {
    ELYMyFavoritesViewController *pushView=[[ELYMyFavoritesViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
}
@end
