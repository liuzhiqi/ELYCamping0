//
//  ELYMessageListViewController.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-11.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYMessageListViewController.h"
#import "ELYMessageTableHeader.h"




@interface ELYMessageListViewController ()<UITableViewDataSource,UITableViewDelegate,ELYMessageTableHeaderDelegate >
@property (weak, nonatomic) IBOutlet UITableView *tableMessage;
@property(nonatomic,assign) BOOL tableStates;

@end

@implementation ELYMessageListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"信息";
    self.tableStates=NO;
//    ELYMessage* temp=[[ELYMessage alloc] init] ;
    self.readList=[[NSArray alloc] initWithObjects:[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,nil];
    self.unreadList=[[NSArray alloc] initWithObjects:[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,[[ELYMessage alloc] init] ,nil];
    [self.tableMessage registerNib:[UINib nibWithNibName:@"ELYMessageTableHeader" bundle:nil] forHeaderFooterViewReuseIdentifier:@"ELYMessageTableHeaderId"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.tableStates==NO) {
        ELYMessage* tempMessage=[self.unreadList objectAtIndex:section];
        if (tempMessage.selected==NO) {
            return 0;
        }else{
            return 1;
        }
    }else{
        ELYMessage* tempMessage=[self.readList objectAtIndex:section];
        if (tempMessage.selected==NO) {
            return 0;
        }else{
            return 1;
        }

    }
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (self.tableStates==NO) {
        
        return self.unreadList.count;
        
    }else{
        
    
        return self.readList.count;
    }
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
     ELYMessageTableHeader * header=[self.tableMessage dequeueReusableHeaderFooterViewWithIdentifier:@"ELYMessageTableHeaderId"];
    if (self.tableStates==NO) {
        header.message=[self.unreadList objectAtIndex:section];
        header.delegate=self;
        
    }else{
        header.message=[self.readList objectAtIndex:section];
        header.delegate=self;
    }
    return header;


}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"ELYMessageListViewController"];
    cell.textLabel.text=@"关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游关于千岛湖三日游";
    cell.detailTextLabel.text=@"aaaa";
    return cell;
}



-(void)unfoldCellWithId:(NSInteger *)tableId
{
    
    
    [self.tableMessage reloadData];

}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;

}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pushRead:(id)sender {
    
    self.tableStates=YES;
    [self.tableMessage reloadData];

}

- (IBAction)pushUnread:(id)sender {
    
    self.tableStates=NO;
    [self.tableMessage reloadData];


}
@end
