//
//  ELYMessageTableHeader.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-12.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYMessageTableHeader.h"

@implementation ELYMessageTableHeader

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)setMessage:(ELYMessage *)message
{
    _message=message;
    self.titleLabel.text=_message.title;
    self.dateLable.text=_message.date;
    if (_message.isRead==YES) {
        [self.image setBackgroundColor:[UIColor greenColor]];
    }else
         [self.image setBackgroundColor:[UIColor redColor]];
}
- (IBAction)pushHeader:(id)sender {
    
    self.message.selected=!self.message.selected;
    [self.delegate unfoldCellWithId:self.tableId];
}
@end
