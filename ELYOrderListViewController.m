//
//  ELYOrderListViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-11.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYOrderListViewController.h"
#import "ELYActivityViewCell.h"
#import "ELYCampsiteViewCell.h"
@interface ELYOrderListViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *orderTable;


@end

@implementation ELYOrderListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.orderTable registerNib:[UINib nibWithNibName:@"ELYActivityViewCell" bundle:nil] forCellReuseIdentifier:@"ELYActivityViewCellId"];
    [self.orderTable registerNib:[UINib nibWithNibName:@"ELYCampsiteViewCell" bundle:nil] forCellReuseIdentifier:@"ELYCampsiteViewCellId"];
    self.title=@"我的订单";
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *lable=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    lable.text=@"2014/7/15~2014/7/25";
    return lable;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ELYActivityViewCell *cell=[self.orderTable dequeueReusableCellWithIdentifier:@"ELYActivityViewCellId" ];

    return cell;
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
