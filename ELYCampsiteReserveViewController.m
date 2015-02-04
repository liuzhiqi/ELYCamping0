//
//  ELYCampsiteReserveViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-11.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYCampsiteReserveViewController.h"
#import "ELYCampsiteReserveViewHeader.h"
@interface ELYCampsiteReserveViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)NSArray *tableHeaderTitle;
@property (weak, nonatomic) IBOutlet UITableView *tableCampsiteInfo;


@end

@implementation ELYCampsiteReserveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"开始预定";
    [self setTableHeaderTitle];
    [self.tableCampsiteInfo registerNib:[UINib nibWithNibName:@"ELYCampsiteReserveViewHeader" bundle:nil] forHeaderFooterViewReuseIdentifier:@"ELYCampsiteReserveViewHeaderId"];
    self.tableCampsiteInfo.contentSize  =CGSizeMake(0.0, 0.0);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setTableHeaderTitle{
    self.tableHeaderTitle=@[@"时间",@"人数",@"可选项目"];
}



#pragma mark - tableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return  3;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    ELYCampsiteReserveViewHeader * header=[self.tableCampsiteInfo dequeueReusableHeaderFooterViewWithIdentifier:@"ELYCampsiteReserveViewHeaderId"];
    header.labelTitle.text=[self.tableHeaderTitle objectAtIndex:section];
    return header;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;

}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 0;
}
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"campsiteTableViewCellId"];

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
