//
//  ELYMessage.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-12.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELYMessage : NSObject

@property (nonatomic,copy)NSString * title;
@property (nonatomic,copy)NSString * detailText;
@property (nonatomic,copy)NSString * from;
@property(nonatomic ,strong)NSString * date;
@property(nonatomic,assign)BOOL	isRead;
@property(nonatomic,assign)BOOL	selected;

@end
