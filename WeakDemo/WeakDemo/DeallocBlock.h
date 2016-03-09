//
// Created by samwei12 on 16/3/9.
// Copyright (c) 2016 samwei12. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^voidBlock)();
@interface DeallocBlock : NSObject

@property(nonatomic, copy) voidBlock block;

- (instancetype)initWithBlock:(voidBlock)block1;

@end