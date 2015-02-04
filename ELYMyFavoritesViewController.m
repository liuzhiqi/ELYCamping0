//
//  ELYMyFavoritesViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-11.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYMyFavoritesViewController.h"
#import "ELYCampsiteViewCell.h"
#import "ELYActivityViewCell.h"
@interface ELYMyFavoritesViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *favoriteTable;
- (IBAction)pushActivity:(id)sender;
- (IBAction)pushCampsite:(id)sender;

@end

@implementation ELYMyFavoritesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.favoriteTable registerNib:[UINib nibWithNibName:@"ELYCampsiteViewCell" bundle:nil] forCellReuseIdentifier:@"ELYCampsiteViewCellId"];
    [self.favoriteTable registerNib:[UINib nibWithNibName:@"ELYActivityViewCell" bundle:nil] forCellReuseIdentifier:@"ELYActivityViewCellId"];
    self.title=@"我的收藏";
    self.pageState=NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.pageState==NO)
    {
        ELYActivityViewCell *cell=  [self.favoriteTable dequeueReusableCellWithIdentifier:@"ELYActivityViewCellId"];
        return cell;
    }else
    {
        ELYCampsiteViewCell *cell=  [self.favoriteTable dequeueReusableCellWithIdentifier:@"ELYCampsiteViewCellId"];
        return cell;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(self.pageState==NO)
    {
        
        return 2;
    }else
    {
      
        return 3;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.pageState==NO)
    {
        
        return 160;
    }else
    {
        
        return 150;
    }

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pushActivity:(id)sender {
    self.pageState=NO;
    [self.favoriteTable reloadData];
}

- (IBAction)pushCampsite:(id)sender {
    self.pageState=YES;
    [self.favoriteTable reloadData];
    
    
}
@end
