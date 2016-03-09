//
// Created by samwei12 on 16/3/9.
// Copyright (c) 2016 samwei12. All rights reserved.
//

#import "DeallocBlock.h"


@implementation DeallocBlock
- (instancetype)initWithBlock:(voidBlock)block1 {
    self = [super init];
    if (self) {
        _block = [block1 copy];
    }
    return self;
}


- (void)dealloc {
    if (_block) {
        NSLog(@"DeallocBlock dealloc!");
        _block();
    }
}
@end