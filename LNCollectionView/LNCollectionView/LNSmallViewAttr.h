//
//  LNSmallViewAttr.h
//  LNCollectionView
//
//  Created by cong on 16/5/27.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNSmallViewAttr : NSObject


// 小视图宽度
@property (nonatomic,assign) CGFloat smallViewW;
// 小视图高度
@property (nonatomic,assign) CGFloat smallViewH;
// 小视图距顶部间距
@property (nonatomic,assign) CGFloat smallViewTopMargin;
// 小视图间行间距
@property (nonatomic,assign) CGFloat smallViewLineMargin;
// 小视图间列间距
@property (nonatomic,assign) CGFloat smallViewInterMargin;

// 根据传入小视图宽度 高度 距顶部间距 行间距 列间距 创建小视图属性
+ (instancetype)smallViewAttrWithSmallViewW:(CGFloat)smallVW andSmallViewH:(CGFloat)smallVH andSmallViewTopMargin:(CGFloat)smallVTopMargin andSmallViewLineMargin:(CGFloat)smallVLineMargin andSmallViewInterMargin:(CGFloat)smallVInterMargin;

@end
