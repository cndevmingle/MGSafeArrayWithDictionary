//
//  NSMutableArray+MGSafe.m
//  Demo
//
//  Created by Mingle on 2018/4/9.
//  Copyright © 2018年 Mingle. All rights reserved.
//

#import "NSMutableArray+MGSafe.h"
#import <objc/runtime.h>

@implementation NSMutableArray (MGSafe)

+ (void)load {
    Method originMethod = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(insertObject:atIndex:));
    Method newMethod = class_getInstanceMethod(self, @selector(mg_insertObject:atIndex:));
    method_exchangeImplementations(originMethod, newMethod);
}

- (void)mg_insertObject:(id)anObject atIndex:(NSUInteger)index {
    if (anObject) {
        [self mg_insertObject:anObject atIndex:index];
    }
}

@end
