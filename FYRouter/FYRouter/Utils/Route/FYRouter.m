//
//  FYRouter.m
//  FYRouter
//
//  Created by admin on 2019/10/25.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter.h"
#import <objc/runtime.h>

static NSString * const kFYRouterParamtersTargetModuleName = @"kFYRouterParamtersTargetModuleName";


@interface FYRouter ()

@property (nonatomic, strong)  NSMutableDictionary *cachesTarget;

@end


@implementation FYRouter

#pragma mark -

+ (instancetype)shareInstance {
    
    static FYRouter *router;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[FYRouter alloc] init];
    });
    
    return router;
}


#pragma mark - Public Methodss

- (id)performActionsWithUrl:(NSURL *)url completion:(void (^)(NSDictionary *))completion {
    
    
    return nil;
}

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName paramters:(NSDictionary *)paramters shouldCacheTarget:(BOOL)shouldCacheTarget {
    NSString *moduleName = paramters[kFYRouterParamtersTargetModuleName];
    
    //target
    NSString *targetClassString = nil;
    if (moduleName.length > 0) {
        targetClassString = [NSString stringWithFormat:@"%@.Target_%@",moduleName, targetName];
    }else {
        targetClassString = [NSString stringWithFormat:@"Target_%@", targetName];
    }
    
    NSObject *target = self.cachesTarget[targetClassString];
    if (target == nil) {
        Class targetClas = NSClassFromString(targetClassString);
        target = [[targetClas alloc] init];
    }
    
    //action
    NSString *actionString = [NSString stringWithFormat:@"Action_%@:", actionName];
    SEL action = NSSelectorFromString(actionString);
    
    if (target == nil) {
        
        [self noTargetActionResponseWithTargetString:targetClassString selectorString:actionString originParamters:paramters];
        return nil;
    }
    
    //cache
    if (shouldCacheTarget) {
        self.cachesTarget[targetClassString] = target;
    }
    
    //target action
    if ([target respondsToSelector:action]) {
        return [self safePerformAction:action target:target paramters:paramters];
    }else {
        SEL action = NSSelectorFromString(@"notFound:");
        if ([target respondsToSelector:action]) {
            return [self safePerformAction:action target:target paramters:paramters];
        }else {
            
            [self noTargetActionResponseWithTargetString:targetClassString selectorString:actionString originParamters:paramters];
            [self.cachesTarget removeObjectForKey:targetClassString];
            return nil;
        }
    }
}

- (void)releaseCacheTargetWithTargetName:(NSString *)targetName {
    NSString *targetClassString = [NSString stringWithFormat:@"Target_%@", targetName];
    [self.cachesTarget removeObjectForKey:targetClassString];
}


#pragma mark - Private Methods

- (void)noTargetActionResponseWithTargetString:(NSString *)targetString selectorString:(NSString *)selectorString originParamters:(NSDictionary *)originParamters {
    SEL action = NSSelectorFromString(@"Action_response:");
    NSObject *target = [[NSClassFromString(@"Target_NoTargetAction") alloc] init];
    
    NSMutableDictionary *paramters = [[NSMutableDictionary alloc] init];
    paramters[@"originParamters"] = originParamters;
    paramters[@"targetString"] = targetString;
    paramters[@"selectorString"] = selectorString;
    
    [self safePerformAction:action target:target paramters:paramters];
}

- (id)safePerformAction:(SEL)action target:(NSObject *)target paramters:(NSDictionary *)paramters {
    NSMethodSignature *methodSig = [target methodSignatureForSelector:action];
    
    if (methodSig == nil) {
        return nil;
    }
    
    const char *retType =[methodSig methodReturnType];
    
    if (strcmp(retType, @encode(void)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&paramters atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        return nil;
    }
    
    if (strcmp(retType, @encode(NSInteger)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&paramters atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        NSInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(BOOL)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&paramters atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        BOOL result = NO;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(NSUInteger)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&paramters atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        NSUInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [target performSelector:action withObject:paramters];
#pragma clang diagnostic pop
}

@end
