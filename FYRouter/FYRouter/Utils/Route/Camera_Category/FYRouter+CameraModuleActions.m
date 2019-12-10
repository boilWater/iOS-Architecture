//
//  FYRouter+CameraModuleActions.m
//  FYRouter
//
//  Created by admin on 2019/12/9.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter+CameraModuleActions.h"

NSString * const kFYRouterTargetCamera = @"Camera";

@implementation FYRouter (CameraModuleActions)

- (UIViewController *)Camera_ShowViewController {
    NSDictionary *paramters = @{};
    
    UIViewController *cameraPage = [self performTarget:kFYRouterTargetCamera action:@"Category_ViewController" paramters:paramters shouldCacheTarget:false];
    
    if ([cameraPage isKindOfClass: [UIViewController class]]) {
        return cameraPage;
    }
    
    return [UIViewController new];
}

@end
