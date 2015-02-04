//
//  ELYMessageListViewController.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-11.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELYMessageListViewController : UIViewController
- (IBAction)pushRead:(id)sender;
- (IBAction)pushUnread:(id)sender;
@property(nonatomic,strong)NSArray* readList;
@property(nonatomic,strong)NSArray* unreadList;

@end
