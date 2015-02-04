//
//  ELYCampsiteViewController.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELYCampsiteViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *campsiteTable;

@end
