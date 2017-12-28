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
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489748993156&di=a05dd001db70790ff1d6d8376cf8a5d6&imgtype=0&src=http%3A%2F%2Fimg5.hao123.com%2Fdata%2F1_08df73b69519276be6e4d5e0c442ae9e_510",
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489748993155&di=fba9f631aebbe0eee97928191814f6ab&imgtype=0&src=http%3A%2F%2Fimg6.web07.cn%2FUPics%2FBizhi%2F2016%2F0913%2F121474130955191.jpg",
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489748993155&di=eb747546ee08dfd0b995f5c2f8642864&imgtype=0&src=http%3A%2F%2Fimg.tuku.cn%2Ffile_big%2F201502%2F0e93d8ab02314174a933b5f00438d357.jpg",
                                @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489748993154&di=03aa60ead6f966cad7e0c78ecb3f449e&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F17%2F14%2F25%2F43Y58PICfJB_1024.jpg"]];
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
