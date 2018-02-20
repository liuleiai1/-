//
//  CalculateTool.m
//
//  Created by 迦南 on 2018/2/20.
//  Copyright © 2018年 迦南. All rights reserved.
//

#import "CalculateTool.h"

@implementation CalculateTool

+ (instancetype)share {
    CalculateTool *tool = [[CalculateTool alloc] init];
    return tool;
}


- (CalculateTool *(^)(NSInteger))plusNumber {
     return ^ (NSInteger number) {
         _result += number;
         
         return self;
     };
}

- (CalculateTool *)calculateResultWithSuccess:(NSInteger (^)(NSInteger))success {
    if (success) {
        _result = success(_result);
    }
    return self;
}

- (CalculateTool *)log {
    NSLog(@"打印结果 -- %ld", (long)_result);
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%ld", (long)_result];
}

@end
