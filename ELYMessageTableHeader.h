//
//  ELYMessageTableHeader.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-12.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELYMessage.h"
@protocol ELYMessageTableHeaderDelegate

@required
-(void)unfoldCellWithId:(NSInteger*)tableId;

@end

@interface ELYMessageTableHeader : UITableViewHeaderFooterView
@property(nonatomic,assign)NSInteger *tableId;
@property(nonatomic,strong)ELYMessage* message;
@property(nonatomic,weak)id<ELYMessageTableHeaderDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLable;





- (IBAction)pushHeader:(id)sender;




@end
