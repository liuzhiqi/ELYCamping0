//
//  ELYUserInfo.h
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELYUserInfo : NSObject

+(instancetype )shareUserInfo;
@property (nonatomic,strong,readonly)NSString *userName;
@property (nonatomic,strong,readonly)NSString *profile;
@property (nonatomic,strong,readonly)NSString *nickName;
@property (nonatomic,strong,readonly)NSString *phoneNumber;
@property (nonatomic,strong,readonly)NSString *nickWeiXin;
@property (nonatomic,strong,readonly)NSString *nickWeiBo;
@property (nonatomic,strong,readonly)NSString *updateTime;
@property (nonatomic,strong,readonly)NSString *createTime;
@property (nonatomic,assign,readonly)NSUInteger cash;
@property (nonatomic,strong,readonly)NSString *selfDescription;
@property (nonatomic,strong,readonly)NSString *qqNumber;
@property (nonatomic,assign,readonly)NSUInteger userLevel;
@property (nonatomic,strong,readonly)NSString *email;
@property (nonatomic,strong,readonly)NSNumber *userId;
-(void)setupUserInfo:(NSDictionary *)indoDic;
-(void)setImagePrefix:(NSDictionary *)dic;
#warning ?????????用户信息改变如何修改这保存都信息
-(void)uploadPrefix:(NSString *)url;

@end
