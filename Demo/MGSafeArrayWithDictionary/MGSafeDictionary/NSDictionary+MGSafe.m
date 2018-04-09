//
//  NSDictionary+MGSafe.m
//  Demo
//
//  Created by Mingle on 2018/4/9.
//  Copyright © 2018年 Mingle. All rights reserved.
//

#import "NSDictionary+MGSafe.h"
#import <objc/runtime.h>

@implementation NSDictionary (MGSafe)

+ (void)load {
    Method originInitMethod = class_getInstanceMethod(NSClassFromString(@"__NSPlaceholderDictionary"), @selector(initWithObjects:forKeys:count:));
    Method newInitMethod = class_getInstanceMethod(self, @selector(mg_initWithObjects:forKeys:count:));
    method_exchangeImplementations(originInitMethod, newInitMethod);
}

- (instancetype)mg_initWithObjects:(id  _Nonnull const [])objects forKeys:(id<NSCopying>  _Nonnull const [])keys count:(NSUInteger)cnt {
    NSUInteger i = 0;
    for (; i < cnt; i++) {
        if (objects[i] && keys[i]) {
            continue;
        }
        break;
    }
    if (i != cnt) {
        NSLog(@"%@插入了空值", NSStringFromClass(self.class));
    }
    return [self mg_initWithObjects:objects forKeys:keys count:i];
}

@end
