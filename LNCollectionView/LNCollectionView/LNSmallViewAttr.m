//
//  LNSmallViewAttr.m
//  LNCollectionView
//
//  Created by cong on 16/5/27.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNSmallViewAttr.h"

@implementation LNSmallViewAttr

+ (instancetype)smallViewAttrWithSmallViewW:(CGFloat)smallVW andSmallViewH:(CGFloat)smallVH andSmallViewTopMargin:(CGFloat)smallVTopMargin andSmallViewLineMargin:(CGFloat)smallVLineMargin andSmallViewInterMargin:(CGFloat)smallVInterMargin{
    
    LNSmallViewAttr *attr = [[LNSmallViewAttr alloc]init];
    
    attr.smallViewW = smallVW;
    attr.smallViewH = smallVH;
    attr.smallViewInterMargin = smallVInterMargin;
    attr.smallViewLineMargin = smallVLineMargin;
    attr.smallViewTopMargin = smallVTopMargin;
    
    return attr;
}


@end
