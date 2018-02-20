//
//  ViewController.m
//  编程思想小结
//
//  Created by 迦南 on 2018/2/20.
//  Copyright © 2018年 迦南. All rights reserved.
//

#import "ViewController.h"
#import "CalculateTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 链式编程思想练习
//    [self ChainProgrammingTest];
    
    // 函数式编程思想练习
    [self FunctionalProgrammingTest];
}

#pragma mark - 链式编程思想练习
- (void)ChainProgrammingTest {
    
    CalculateTool * tool = [CalculateTool share];
    tool.plusNumber(5).plusNumber(3).plusNumber(2);
    NSLog(@"%@", tool);
}

#pragma mark - 函数式编程思想练习
- (void)FunctionalProgrammingTest {
    CalculateTool * tool = [CalculateTool share];
    [[[tool calculateResultWithSuccess:^NSInteger(NSInteger result) {
        
        result += 20;
        result -= 5;
        return result;
        
    }] calculateResultWithSuccess:^NSInteger(NSInteger result) {
        
        return result -= 10;
        
    }] log];
}

#pragma mark - 响应式编程思想
// 详见KVO的底层实现原理

@end
