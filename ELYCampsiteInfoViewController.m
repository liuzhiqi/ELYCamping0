//
//  ELYCampsiteInfoViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-11.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYCampsiteInfoViewController.h"
#import "ELYCampsiteReserveViewController.h"
@interface ELYCampsiteInfoViewController ()<UITableViewDataSource,UITableViewDelegate>
- (IBAction)reserveCamp:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *infoTable;

@end

@implementation ELYCampsiteInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cellTitle=[[NSArray alloc] init];
    self.infoTable.scrollEnabled=NO;
    [self setCellTitle];
    self.title=@"营地详情";
    // Do any additional setup after loading the view from its nib.
}
-(void)setCellTitle
{
    self.cellTitle=@[@"基础设施",@"周边",@"地理信息",@"注意事项",@"用户评论"];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ELYCampsiteInfoViewCellId"];
    cell.textLabel.text= [self.cellTitle objectAtIndex:indexPath.section];
    return cell;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 25;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 8;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)reserveCamp:(id)sender {
    ELYCampsiteReserveViewController *pushView=[[ELYCampsiteReserveViewController alloc] init];
    
    pushView.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:pushView animated:YES];
    
    
}
@end
