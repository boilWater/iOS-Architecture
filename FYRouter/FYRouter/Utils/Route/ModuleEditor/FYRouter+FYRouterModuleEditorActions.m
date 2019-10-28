//
//  FYRouter+FYRouterModuleEditorActions.m
//  FYRouter
//
//  Created by admin on 2019/10/26.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter+FYRouterModuleEditorActions.h"

//Target
NSString * const kFYRouterTargetEditor = @"Editor";

//Actions
NSString * const kFYRouterActionNavtiveFetchEditorViewController = @"nativeEditorViewController";
NSString * const kFYRouterActionNavtiveEditorPresentImage = @"nativeEditorPresentImage";
NSString * const kFYRouterActionNavtiveNoImage = @"nativeNoImage";

@implementation FYRouter (FYRouterModuleEditorActions)

- (UIViewController *)Editor_ShowViewController {
    UIViewController *viewController = [self performTarget:kFYRouterTargetEditor action:kFYRouterActionNavtiveFetchEditorViewController paramters:@{@"key": @"value"} shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    }else {
        return [[UIViewController alloc] init];
    }
}


- (void)Editor_PresentImage:(UIImage *)image {
    if (image) {
        [self performTarget:kFYRouterTargetEditor action:kFYRouterActionNavtiveEditorPresentImage paramters:@{@"image":image} shouldCacheTarget:YES];
    }else {
        [self performTarget:kFYRouterTargetEditor action:kFYRouterActionNavtiveNoImage paramters:@{@"image":[UIImage imageNamed:@""]} shouldCacheTarget:YES];
    }
    
}


@end
