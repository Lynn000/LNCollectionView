//
//  ViewController.m
//  LNCollectionView
//
//  Created by cong on 16/5/26.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "ViewController.h"

#import "UIScrollView+CollectionView.h"

@interface ViewController ()

@property (nonatomic,strong) UIView * fatherView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fatherView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.view addSubview:self.fatherView];
    
    // 设置子视图个数
    NSInteger smallViewCount = 6;
    // 设置子视图列数
    NSInteger colCount = 2;
    // 设置子视图宽度
    CGFloat smallViewW = self.view.bounds.size.width / colCount;
    // 设置子视图高度
    CGFloat smallViewH = smallViewW;
    // 设置距顶部间距
    CGFloat topMargin = 60;
    // 设置行间距
    CGFloat lineMargin = 20;
    // 设置列间距
    CGFloat interMargin = 10;
    
    LNSmallViewAttr *smallVAttr = [LNSmallViewAttr smallViewAttrWithSmallViewW:smallViewW andSmallViewH:smallViewH andSmallViewTopMargin:topMargin andSmallViewLineMargin:lineMargin andSmallViewInterMargin:interMargin];
    
    NSArray *frameArray = [self.fatherView setupSmallViewFrameWithSmallViewCount:smallViewCount andColCount:colCount andSmallViewAttri:smallVAttr];
    
    [self setupSmallViewsWithArray:frameArray];
}


- (void)setupSmallViewsWithArray:(NSArray *)frameArray{
    
    [frameArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSValue *frameValue = obj;
        
        CGRect smallViewFrame = [frameValue CGRectValue];
        
        UIView *smallV = [[UIView alloc]initWithFrame:smallViewFrame];
        
        smallV.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

        [self.fatherView addSubview:smallV];
        
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
