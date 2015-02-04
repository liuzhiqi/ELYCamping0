//
//  ELYActivityViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//
#import "ELYActivityViewCell.h"
#import "ELYActivityViewController.h"
#import "EScrollerView.h"
#import "ELYActivityInfoViewController.h"
@interface ELYActivityViewController ()

@end

@implementation ELYActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.activityTable registerNib:[UINib nibWithNibName:@"ELYActivityViewCell" bundle:nil] forCellReuseIdentifier:@"ELYActivityViewCellId"];
    EScrollerView *scroller=[[EScrollerView alloc] initWithFrameRect:CGRectMake(0, 66, self.view.frame.size.width, 150)
                                                          ImageArray:[NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg", nil]
                                                          TitleArray:nil];
    
    scroller.delegate=self;
    self.activityTable.tableHeaderView=scroller;



}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 10;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ELYActivityViewCell *cell=[self.activityTable dequeueReusableCellWithIdentifier:@"ELYActivityViewCellId"];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;

}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ELYActivityInfoViewController *pushView=[[ELYActivityInfoViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
    
    
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
