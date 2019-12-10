//
//  FYRouter.h
//  FYRouter
//
//  Created by admin on 2019/10/25.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FYRouter : NSObject

+ (instancetype)shareInstance;


- (id)performActionsWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName paramters:(NSDictionary *)paramters shouldCacheTarget:(BOOL)shouldCacheTarget;

- (void)releaseCacheTargetWithTargetName:(NSString *)targetName;

@end

