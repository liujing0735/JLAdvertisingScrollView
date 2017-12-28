//
//  JLAdvertisingScrollView.h
//  JLAdvertisingScrollView
//
//  Created by 刘靖 on 2017/3/16.
//  Copyright © 2017年 刘靖. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    JLTitleAlignmentTop,
    JLTitleAlignmentBottom,
} JLTitleAlignment;

@class JLAdvertisingScrollView;

@protocol JLAdvertisingScrollViewDelegate <NSObject>

@optional

/**
 点击事件代理

 @param scrollView JLAdvertisingScrollView
 @param index 点击的图片的序号
 */
- (void)advertisingScrollView:(JLAdvertisingScrollView *)scrollView  clickEventAtIndex:(NSInteger)index;
@end

@interface JLAdvertisingScrollView : UIView

@property (strong, nonatomic) id <JLAdvertisingScrollViewDelegate> delegate;

@property (strong, nonatomic) UILabel *titleLabel;

/**
 图像占位符
 */
@property (strong, nonatomic) UIImage *placeholderImage;

/**
 使用本地图片初始化
 */
@property (strong, nonatomic) NSArray <UIImage *> *images;

/**
 使用本地图片的名称初始化
 */
@property (strong, nonatomic) NSArray <NSString *> *imageNames;

/**
 使用网络图片的URL地址初始化
 */
@property (strong, nonatomic) NSArray <NSString *> *imageUrls;

/**
 标题内容
 */
@property (strong, nonatomic) NSArray <NSString *> *titles;

/**
 标题颜色
 */
@property (strong, nonatomic) UIColor *titleTextColor;

/**
 标题背景颜色
 */
@property (strong, nonatomic) UIColor *titleBackgroundColor;

/**
 标题显示位置
 */
@property (assign, nonatomic) JLTitleAlignment titleAlignment;

/**
 标题文字对齐
 */
@property (assign, nonatomic) NSTextAlignment textAlignment;

/**
 广告滚动视图是否自动滚动，默认为YES
 */
@property (assign, nonatomic) BOOL autoLoop;

/**
 广告滚动视图自动滚动的时间间隔
 */
@property (assign, nonatomic) NSTimeInterval autoLoopInterval;

/**
 UIPageControl是否显示，默认为YES
 */
@property (assign, nonatomic) BOOL showPageControl;

/**
 标题UILabel是否显示，当标题内容titles不为空时，默认为YES
 */
@property (assign, nonatomic) BOOL showTitleLabel;
@end
