//
//  NSString+MGSafe.m
//  Demo
//
//  Created by Mingle on 2018/4/14.
//  Copyright © 2018年 Mingle. All rights reserved.
//

#import "NSString+MGSafe.h"

@implementation NSString (MGSafe)

- (id)objectAtIndexedSubscript:(NSUInteger)index {
    return nil;
}

- (id)objectForKeyedSubscript:(id)key {
    return nil;
}

- (id)objectForKey:(NSString *)key {
    return nil;
}

- (id)objectAtIndex:(NSUInteger)index {
    return nil;
}

- (NSUInteger)count {
    return 0;
}

@end
