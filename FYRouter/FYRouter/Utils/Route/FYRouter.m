//
//  FYRouter.m
//  FYRouter
//
//  Created by admin on 2019/10/25.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter.h"

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
    
    return nil;
}

- (void)releaseCacheTargetWithTargetName:(NSString *)targetName {
    
}


#pragma mark - Private Methods




@end
