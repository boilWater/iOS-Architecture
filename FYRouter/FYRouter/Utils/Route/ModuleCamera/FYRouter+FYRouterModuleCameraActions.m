//
//  FYRouter+FYRouterModuleCameraActions.m
//  FYRouter
//
//  Created by admin on 2019/10/28.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter+FYRouterModuleCameraActions.h"

//Target
NSString * const kFYRouterTargetCamera = @"Camera";

//Actions
NSString * const kFYRouterActionNavtiveCameraPresentImage = @"nativeCameraPresentImage";


@implementation FYRouter (FYRouterModuleCameraActions)

- (UIViewController *)Camera_PresentImage:(UIImage *)image {
    UIViewController *cameraViewController = [self performTarget:kFYRouterTargetCamera action:kFYRouterActionNavtiveCameraPresentImage paramters:@{@"image": image} shouldCacheTarget:NO];
    
    if ([cameraViewController isKindOfClass:[UIViewController class]]) {
        return cameraViewController;
    }else {
        return [UIViewController new];
    }
}

@end
