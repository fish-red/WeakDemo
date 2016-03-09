//
// Created by samwei12 on 16/3/9.
// Copyright (c) 2016 samwei12. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeallocBlock.h"
@interface NSObject (deallocBlock)
- (void)runBlockOnDealloc:(voidBlock)block;
@end