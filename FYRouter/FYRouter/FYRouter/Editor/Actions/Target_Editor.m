//
//  Target_Editor.m
//  FYRouter
//
//  Created by admin on 2019/10/26.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Target_Editor.h"
#import "FYEditorViewController.h"


@implementation Target_Editor

- (UIViewController *)Action_nativeEditorViewController:(NSDictionary *)paramters {
    FYEditorViewController *viewController = [[FYEditorViewController alloc] init];
    viewController.title = paramters[@"key"];
    viewController.modalPresentationStyle = UIModalPresentationFullScreen;
    
    return viewController;
}

- (id)Action_nativePresentImage:(NSDictionary *)paramters {
    
    FYEditorViewController *viewController = [[FYEditorViewController alloc] init];
    //viewController.title = paramters[@"image"];
    
    [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:viewController animated:YES completion:^{
        
    }];
    
    return nil;
}


@end
