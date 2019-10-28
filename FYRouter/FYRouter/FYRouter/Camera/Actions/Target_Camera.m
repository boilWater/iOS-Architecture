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

- (UIViewController *)Action_nativeCameraPresentImage:(NSDictionary *)paramters {
    FYCameraViewController *cameraPageView = [[FYCameraViewController alloc] init];
    cameraPageView.modalPresentationStyle = UIModalPresentationFullScreen;
    
    UIImage *pImage = [paramters objectForKey:@"image"];
    cameraPageView.backgroundImageView.image = pImage;
    
    if ([cameraPageView isKindOfClass:[UIViewController class]]) {
        return cameraPageView;
    }else {
        return [UIViewController new];
    }
    
}

@end
