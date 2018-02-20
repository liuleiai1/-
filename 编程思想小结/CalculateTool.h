//
//  CalculateTool.h
//
//  Created by 迦南 on 2018/2/20.
//  Copyright © 2018年 迦南. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculateTool : NSObject

@property (nonatomic, assign) NSInteger result;

+ (instancetype)share;

/**
  *  链式编程思想
  *  返回值为block，block的返回值为对象本身，通过点语法来形成链条式的调用
  */
- (CalculateTool * (^)(NSInteger))plusNumber;



/**
 *  函数式编程思想
 *  方法返回值为对象本身
 *  参数为block
 */
- (CalculateTool *)calculateResultWithSuccess:(NSInteger (^)(NSInteger))success;
- (CalculateTool *)log;

@end
