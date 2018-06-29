//
//  ViewController.m
//  FastForwardingDemo
//
//  Created by cheyipai on 2018/6/29.
//  Copyright © 2018年 cheyipai. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testEntrance];
}
-(void)testEntrance{
    [[MyClass new] performSelector:@selector(unknownInstanceMethod) withObject:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
