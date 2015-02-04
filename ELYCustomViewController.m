//
//  ELYCustomViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYCustomViewController.h"
#import "ELYCustomInfoViewController.h"
@interface ELYCustomViewController ()
- (IBAction)startBooking:(id)sender;

@end

@implementation ELYCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"活动定制";
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

- (IBAction)startBooking:(id)sender {
    
    ELYCustomInfoViewController *pushView=[[ELYCustomInfoViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
}
@end
