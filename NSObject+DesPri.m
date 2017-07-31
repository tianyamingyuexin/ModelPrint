//
//  NSObject+DesPri.m
//  keyboard
//
//  Created by jujutec－mac on 2017/7/31.
//  Copyright © 2017年 jujutec－mac. All rights reserved.
//

#import "NSObject+DesPri.h"
#import <objc/runtime.h>
@implementation NSObject (DesPri)
- (NSString *)debugDescription
{
    if ([self isKindOfClass:[NSArray class]]||[self isKindOfClass:[NSDictionary class]]||[self isKindOfClass:[NSNumber class]]||[self isKindOfClass:[NSString class]]) {
        return self.debugDescription;
    }
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    uint count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
    for (int i = 0; i<count; i++)
    {
        objc_property_t property = properties[i];
        NSString *name = @(property_getName(property));
        id value = [self valueForKey:name]?:@"nil";
        [dictionary setValue:value forKey:name];
    }
    
    free(properties);
    return [NSString stringWithFormat:@"<%@:%p>--|%@",[self class],self,dictionary];
}
@end
