//
// Created by samwei12 on 16/3/9.
// Copyright (c) 2016 samwei12. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ClassB;
@interface ClassA : NSObject
@property (nonatomic, unsafe_unretained) ClassB *objectB;
@end