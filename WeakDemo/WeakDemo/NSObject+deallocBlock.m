//
// Created by samwei12 on 16/3/9.
// Copyright (c) 2016 samwei12. All rights reserved.
//

#import "NSObject+deallocBlock.h"
#import <objc/runtime.h>

@implementation NSObject (deallocBlock)
- (void)runBlockOnDealloc:(voidBlock)block {
    if (block) {
        DeallocBlock *deallocBlock = [[DeallocBlock alloc] initWithBlock:block];
        objc_setAssociatedObject(self, _cmd, deallocBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}
@end