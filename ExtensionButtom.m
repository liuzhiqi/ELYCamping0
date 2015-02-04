//
//  ExtensionButtom.m
//  ELYCamping
//
//  Created by LiuZhiqi on 15-1-9.
//  Copyright (c) 2015年 Eluying. All rights reserved.
//

#import "ExtensionButtom.h"

@implementation ExtensionButtom



-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self=[super initWithCoder:aDecoder];
    if (self) {
        _badge=81;
        _badgeAngle=[NSNumber numberWithDouble:M_PI/4] ;
        _badgeRadio=@8;
         [self setNeedsDisplay];    }
    return self;
}
-(void)changeBadge:(NSInteger)badge
{
    _badge=badge;
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    CGContextRef ctx=UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx, self.frame.size.width/2, self.frame.size.height/2, self.frame.size.height/2-3, 0, M_PI*2, 0);
    CGContextStrokePath(ctx);
    CGFloat radio=self.frame.size.height/2-3;
    CGFloat bx=self.frame.size.width/2 +cos(self.badgeAngle.floatValue)*radio;

    CGFloat by=self.frame.size.height/2-sin( self.badgeAngle.floatValue)*radio;
    CGContextAddArc(ctx, bx, by, self.badgeRadio.floatValue, 0, M_PI*2, 0);
    [[UIColor yellowColor] set];
    
    
    CGContextFillPath(ctx);
    NSString *badgeStr=[NSString stringWithFormat:@"%ld",(long)_badge];
    UIFont *badgeFont=[UIFont systemFontOfSize:(self.badgeRadio.floatValue*1.4)];


    NSMutableDictionary *fontAttrs=[NSMutableDictionary dictionary];
    fontAttrs[NSFontAttributeName]=badgeFont;
    
    
    CGSize fieldSize=[badgeStr sizeWithAttributes:fontAttrs];
    
    CGRect badgeFrame=CGRectMake(bx-fieldSize.width/2, by-fieldSize.height/2, fieldSize.width, fieldSize.height);
    
    
    [badgeStr drawInRect:badgeFrame withAttributes:fontAttrs];

    // Drawing code


}


@end
