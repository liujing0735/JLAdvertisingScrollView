//
//  ViewController.m
//  JLAdvertisingScrollView
//
//  Created by 刘靖 on 2017/3/16.
//  Copyright © 2017年 刘靖. All rights reserved.
//

#import "ViewController.h"
#import "JLAdvertisingScrollView.h"
#import <JLExtension/JLExtension.h>

@interface ViewController () <JLAdvertisingScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
    JLAdvertisingScrollView *advertising = [[JLAdvertisingScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 280)];
    //[advertising setImageNames:@[@"便利店",@"服务",@"教育",@"美食"]];
    //[advertising setImages:@[[UIImage imageNamed:@"便利店"],[UIImage imageNamed:@"服务"],[UIImage imageNamed:@"教育"],[UIImage imageNamed:@"美食"]]];
    [advertising setImageUrls:@[
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568802364826&di=81eeba983e78be1b8e27d19ce06d227c&imgtype=0&src=http%3A%2F%2Fb.zol-img.com.cn%2Fsoft%2F6%2F571%2FcepyVKtIjudo6.jpg",
                                
                                    @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568802396164&di=87eeea1545944a3feb989edc59a697d1&imgtype=0&src=http%3A%2F%2Fimg.sccnn.com%2Fbimg%2F337%2F23662.jpg",
                                
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568802388370&di=770b6d595ebadc2a45b2aae29c5ccdc2&imgtype=0&src=http%3A%2F%2Fnews.mydrivers.com%2FImg%2F20110307%2F02425314.jpg",
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568802392695&di=b7e82b55844a3ebd42ab31154d282efb&imgtype=0&src=http%3A%2F%2Fimg.sccnn.com%2Fbimg%2F337%2F28719.jpg"]];
    [advertising setTitles:@[@"测试标题一",
                             @"测试标题二",
                             @"测试标题三",
                             @"测试标题四"]];
    [advertising setDelegate:self];
    [advertising setAutoLoopInterval:3];
    [advertising setAutoLoop:NO];
    [advertising setShowPageControl:NO];
    [self.view addSubview:advertising];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)advertisingScrollView:(JLAdvertisingScrollView *)scrollView clickEventAtIndex:(NSInteger)index {
    NSLog(@"点击了第%ld张图片",(long)index);
}

@end
