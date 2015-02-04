//
//  ELYCampsiteReserveViewHeader.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-14.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELYCampsiteReserveViewHeader : UITableViewHeaderFooterView

//@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

- (IBAction)pushCell:(id)sender;
- (IBAction)pushEdit:(id)sender;

@end
