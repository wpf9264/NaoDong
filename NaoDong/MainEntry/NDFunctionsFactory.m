//
//  NDFunctionsFactory.m
//  NaoDong
//
//  Created by WangPengfei on 2020/9/4.
//  Copyright © 2020 WangPengfei. All rights reserved.
//

#import "NDFunctionsFactory.h"

@interface NDFunctionsFactory ()

@property (nonatomic, strong) NSMutableArray *funcsArray;

@end


@implementation NDFunctionsFactory

+ (instancetype)sharedInstance
{
    static NDFunctionsFactory *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[NDFunctionsFactory alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.funcsArray addObject:@(NDFunctionTypeTest1)];
        [self.funcsArray addObject:@(NDFunctionTypeTest2)];
    }
    return self;
}

- (NSInteger)functionCount
{
    return [self.funcsArray count];
}

#pragma mark - getter
- (NSMutableArray *)funcsArray
{
    if (!_funcsArray) {
        _funcsArray = [NSMutableArray array];
    }
    return _funcsArray;
}

@end
