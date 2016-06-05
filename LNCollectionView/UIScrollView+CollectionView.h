//
//  UIScrollView+CollectionView.h
//  LNCollectionView
//
//  Created by cong on 16/5/27.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LNSmallViewAttr.h"

#define KViewX @"KViewX"
#define KViewY @"KViewY"
#define KViewW @"KViewW"
#define KViewH @"KViewH"

@interface UIScrollView (CollectionView)

// 根据传入的这些数据设置图片方法
- (NSArray *)setupSmallViewFrameWithSmallViewCount:(NSInteger)smallVCount andColCount:(NSInteger)colCount andSmallViewAttri:(LNSmallViewAttr *)smallViewAttr;
// 设置图片
// 设置标签

@end
