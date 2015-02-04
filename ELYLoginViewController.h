//
//  ELYLoginViewController.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELYLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *pushLogin;
- (IBAction)pushRegister:(id)sender;
- (IBAction)pushLogin:(id)sender;

@end
