# JLAdvertisingScrollView
轻量级的广告轮播滚动视图

## 如何安装

### 1 手动安装 

step1:将项目JLAdvertisingScrollView/Source 文件夹中的文件直接拖入你的项目中即可

step2:导入.h文件

#import "JLAdvertisingScrollView.h"

### 2 CocoaPods 

step1: add the following line to your Podfile:

pod 'JLAdvertisingScrollView','~> 0.0.1'

step2: 导入.h文件

#import <JLAdvertisingScrollView/JLAdvertisingScrollView.h>

## 使用示例

## 代码说明
```
@protocol JLAdvertisingScrollViewDelegate <NSObject>

@optional

/**
 点击事件带来

 @param scrollView JLAdvertisingScrollView
 @param index 点击的图片序号
 */
- (void)advertisingScrollView:(JLAdvertisingScrollView *)scrollView  clickEventAtIndex:(NSInteger)index;
@end

@interface JLAdvertisingScrollView : UIView

@property (strong, nonatomic) id <JLAdvertisingScrollViewDelegate> delegate;

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
 广告滚动视图是否自动滚动，默认为YES
 */
@property (assign, nonatomic) BOOL autoLoop;

/**
 广告滚动视图自动滚动的时间间隔
 */
@property (assign, nonatomic) NSTimeInterval autoLoopInterval;
@end
```
