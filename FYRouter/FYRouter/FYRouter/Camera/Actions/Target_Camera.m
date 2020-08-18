//
//  Target_Home.m
//  FYRouter
//
//  Created by admin on 2019/10/26.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Target_Camera.h"
#import "FYCameraViewController.h"

@implementation Target_Camera

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)paramters {
    FYCameraViewController *cameraPage = [[FYCameraViewController alloc] init];
    cameraPage.modalPresentationStyle = UIModalPresentationFullScreen;
    
    if ([cameraPage isKindOfClass:[UIViewController class]]) {
        return cameraPage;
    }
    
    return [UIViewController new];
}


@end
