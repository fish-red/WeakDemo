//
//  main.m
//  WeakDemo
//
//  Created by samwei12 on 16/3/9.
//  Copyright (c) 2016 samwei12. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA *instanceA = [ClassA new];
        ClassB *instanceB = [ClassB new];

        instanceA.objectB = instanceB;

        [instanceA.objectB print];
            // release instanceB
        instanceB = nil;

        [instanceA.objectB print];
    }

    // prevent process be killed immediately
//    sleep(1);
    return 0;
}