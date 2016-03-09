//
// Created by samwei12 on 16/3/9.
// Copyright (c) 2016 samwei12. All rights reserved.
//

#import "ClassA.h"
#import "ClassB.h"
#import "NSObject+deallocBlock.h"

@implementation ClassA

- (void)setObjectB:(ClassB *)objectB {
    _objectB = objectB;
    if (_objectB) {
        [_objectB runBlockOnDealloc:^{
            NSLog(@"_objectB dealloc");
            _objectB = nil;
        }];
    }
}

@end