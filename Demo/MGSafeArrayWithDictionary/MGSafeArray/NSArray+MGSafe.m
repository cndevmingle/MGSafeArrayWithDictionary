//
//  NSArray+MGSafe.m
//  Demo
//
//  Created by Mingle on 2018/4/9.
//  Copyright © 2018年 Mingle. All rights reserved.
//

#import "NSArray+MGSafe.h"
#import <objc/runtime.h>

@implementation NSArray (MGSafe)

+ (void)load {
    Method originInitMethod = class_getInstanceMethod(NSClassFromString(@"__NSPlaceholderArray"), @selector(initWithObjects:count:));
    Method newInitMethod = class_getInstanceMethod(self, @selector(mg_initWithObjects:count:));
    method_exchangeImplementations(originInitMethod, newInitMethod);
}

- (instancetype)mg_initWithObjects:(id  _Nonnull const [])objects count:(NSUInteger)cnt {
    NSUInteger i = 0;
    for (; i < cnt; i++) {
        if (objects[i]) {
            continue;
        }
        break;
    }
    if (i != cnt) {
        NSLog(@"%@插入了空值", NSStringFromClass(self.class));
    }
    return [self mg_initWithObjects:objects count:cnt];
}

@end
