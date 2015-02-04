//
//  ELYCampsiteViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYCampsiteViewController.h"
#import "ELYCampsiteViewCell.h"
#import "EScrollerView.h"
#import "ELYCampsiteInfoViewController.h"
@interface ELYCampsiteViewController ()<EScrollerViewDelegate>

@end

@implementation ELYCampsiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.campsiteTable registerNib:[UINib nibWithNibName:@"ELYCampsiteViewCell" bundle:nil] forCellReuseIdentifier:@"ELYCampsiteViewCellId"];
    
    
    
    EScrollerView *scroller=[[EScrollerView alloc] initWithFrameRect:CGRectMake(0, 66, self.view.frame.size.width, 150)
                                                          ImageArray:[NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg", nil]
                                                          TitleArray:nil];
    
    scroller.delegate=self;
    self.campsiteTable.tableHeaderView=scroller;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{

    return 10;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d",indexPath.section);
    ELYCampsiteViewCell *cell=[self.campsiteTable dequeueReusableCellWithIdentifier:@"ELYCampsiteViewCellId"];
    return cell;
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ELYCampsiteInfoViewController *pushView=[[ELYCampsiteInfoViewController alloc] init];
    
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
