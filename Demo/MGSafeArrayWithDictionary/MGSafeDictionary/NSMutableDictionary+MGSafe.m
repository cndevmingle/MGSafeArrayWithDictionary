//
//  NSMutableDictionary+MGSafe.m
//  Demo
//
//  Created by Mingle on 2018/4/9.
//  Copyright © 2018年 Mingle. All rights reserved.
//

#import "NSMutableDictionary+MGSafe.h"
#import <objc/runtime.h>

@implementation NSMutableDictionary (MGSafe)

+ (void)load {
    Method originSetMethod = class_getInstanceMethod(NSClassFromString(@"__NSDictionaryM"), @selector(setObject:forKey:));
    Method newSetMethod = class_getInstanceMethod(self, @selector(mg_setObject:forKey:));
    method_exchangeImplementations(originSetMethod, newSetMethod);
}

- (void)mg_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject && aKey) {
        [self mg_setObject:anObject forKey:aKey];
    } else {
        NSLog(@"%@为空", aKey?@"value":@"key");
    }
}

@end
