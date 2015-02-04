//
//  ELYMessage.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-12.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYMessage.h"

@implementation ELYMessage

-(instancetype)init
{
    if (self=[super init]) {
        _title=@"关于千岛湖三日游";
       _detailText=@"千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好千岛湖很好很好很好";
       _from=@"Tuotuo";
      _date=@"2014/7/15";
      _isRead=NO;
        _selected=NO;
    }
    return self;
}


@end
