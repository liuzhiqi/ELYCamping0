//
//  ELYRegisterViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYRegisterViewController.h"
#import "ELYLoginViewController.h"
@interface ELYRegisterViewController ()

@end

@implementation ELYRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)pushLogin:(id)sender {
    ELYLoginViewController *modalView=[[ELYLoginViewController alloc] init];
    [self presentViewController:modalView animated:YES completion:^{
    }];
    
}
@end
