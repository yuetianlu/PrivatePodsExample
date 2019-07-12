//
//  ViewController.m
//  PrivatePodsExample
//
//  Created by yuetianlu on 2019/7/11.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "ViewController.h"
#import "ATest.h"
#import "AClassTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [ATest showA];
    [ATest showA2];
    
    // 第一种方式
    //    NSURL *associateBundleURL = [[NSBundle mainBundle] URLForResource:@"AClassTest" withExtension:@"bundle"];
    //    NSBundle *bundle = [NSBundle bundleWithURL:associateBundleURL];
    //
    //    UIImage *image = [UIImage imageNamed:@"arrow_down"
    //                                inBundle:bundle
    //           compatibleWithTraitCollection:nil];

    
    UIImageView *imageView = [[UIImageView alloc] init];
    //imageView.image = [UIImage imageNamed:@"arrow_down"];
    
    // 第二种方式
    imageView.image = [AClassTest imageNamed:@"arrow_down"];
    imageView.frame = CGRectMake(100, 100, 20, 20);
    [self.view addSubview:imageView];

    // Do any additional setup after loading the view.
}


@end
