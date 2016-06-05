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

@property (nonatomic,strong) UIScrollView * scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LNSmallViewAttr *smallVAttr = [LNSmallViewAttr smallViewAttrWithSmallViewW:80 andSmallViewH:50 andSmallViewTopMargin:60 andSmallViewLineMargin:20 andSmallViewInterMargin:20];
    
    self.scrollView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.view addSubview:self.scrollView];
    
    NSArray *frameArray = [self.scrollView setupSmallViewFrameWithSmallViewCount:6 andColCount:4 andSmallViewAttri:smallVAttr];
    
    [self setupSmallViewsWithArray:frameArray];
}


- (void)setupSmallViewsWithArray:(NSArray *)frameArray{
    
    [frameArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSDictionary *dict = obj;
        
        UIView *smallV = [[UIView alloc]initWithFrame:CGRectMake([dict[KViewX] floatValue], [dict[KViewY] floatValue], [dict[KViewW] floatValue], [dict[KViewH] floatValue])];
        
        smallV.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

        [self.scrollView addSubview:smallV];
        
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
