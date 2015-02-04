//
//  ELYUserInfo.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-8.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ELYUserInfo.h"

@implementation ELYUserInfo

static ELYUserInfo *shareInfo;

+(instancetype )shareUserInfo{
    
    
    
    static dispatch_once_t userInfoOnceToken;
    
    dispatch_once(&userInfoOnceToken, ^{
        
        shareInfo = [ELYUserInfo new];
    });
    
    return shareInfo;
}

-(void)setImagePrefix:(NSDictionary *)dic{
    
    
}
-(void)uploadPrefix:(NSString *)url
{
    _profile=url;
}





@end
