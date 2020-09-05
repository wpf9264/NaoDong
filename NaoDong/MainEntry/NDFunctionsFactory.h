//
//  NDFunctionsFactory.h
//  NaoDong
//
//  Created by WangPengfei on 2020/9/4.
//  Copyright © 2020 WangPengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, NDFunctionType) {
    NDFunctionTypeTest1 = 0,
    NDFunctionTypeTest2,
};

@interface NDFunctionsFactory : NSObject

+ (instancetype)sharedInstance;

- (NSInteger)functionCount;

@end

NS_ASSUME_NONNULL_END
