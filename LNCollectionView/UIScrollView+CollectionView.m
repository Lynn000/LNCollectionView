//
//  UIScrollView+CollectionView.m
//  LNCollectionView
//
//  Created by cong on 16/5/27.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "UIScrollView+CollectionView.h"

@implementation UIScrollView (CollectionView)


- (NSArray *)setupSmallViewFrameWithSmallViewCount:(NSInteger)smallVCount andColCount:(NSInteger)colCount andSmallViewAttri:(LNSmallViewAttr *)smallViewAttr{
    // 创建数组来接收位置属性字典
    NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:smallVCount];
    
    // 计算左右间距
    CGFloat leftMargin = (self.bounds.size.width - colCount * smallViewAttr.smallViewW - (colCount - 1)* smallViewAttr.smallViewInterMargin) *0.5;
    
    // 循环计算每个格子的位置
    for (NSInteger i = 0; i<smallVCount; i++) {
        
        // 计算行号
        NSInteger rowNum = i / colCount;
        // 计算列号
        NSInteger colNum = i % colCount;
        
        // 计算X
        CGFloat viewX = leftMargin + colNum * (smallViewAttr.smallViewW + smallViewAttr.smallViewInterMargin);
        // 计算Y
        CGFloat viewY = smallViewAttr.smallViewTopMargin + rowNum * (smallViewAttr.smallViewH +smallViewAttr.smallViewLineMargin);
        NSDictionary *frameDict = @{ KViewX:@(viewX), KViewY:@(viewY), KViewW:@(smallViewAttr.smallViewW), KViewH:@(smallViewAttr.smallViewH)};
        [arrayM addObject:frameDict];
        
    }
    
    
    return arrayM;
}

@end