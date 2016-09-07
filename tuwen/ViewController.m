//
//  ViewController.m
//  tuwen
//
//  Created by 王卫亮 on 16/8/15.
//  Copyright © 2016年 王卫亮. All rights reserved.
//

//666
#import "ViewController.h"
#import "CustumButton.h"

#define GetWindowsFrameWidth [UIScreen mainScreen].bounds.size.width
#define GetWindowsFrameHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property (nonatomic, strong) UIButton *testBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CustumButton *btn = [[CustumButton alloc] initWithFrame:CGRectMake(GetWindowsFrameWidth - 55, 150, 50, 50)];
    [self.view addSubview:btn];
    [btn setTitle:@"99" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.testBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 50, 50)];
    self.testBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.testBtn];
    

    



}












- (void)click {
    NSLog(@"dfasfasfsaf");
    
    self.testBtn = nil;
    [self.testBtn setTitle:@"ddddd" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
