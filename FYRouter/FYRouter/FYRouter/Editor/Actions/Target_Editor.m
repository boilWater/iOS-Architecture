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

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)paramters {
    FYEditorViewController *editorPage = [[FYEditorViewController alloc] init];
    editorPage.modalPresentationStyle = UIModalPresentationFullScreen;
    
    return editorPage;
}

- (UIViewController *)Action_Category_PreViewController:(NSDictionary *)paramters {
    FYEditorViewController *editorPage = [[FYEditorViewController alloc] init];
    editorPage.title = [paramters objectForKey:kFYRouterParamtersTitle];
    editorPage.previewImage = [paramters objectForKey:kFYRouterParamtersImage];
    
    editorPage.modalPresentationStyle = UIModalPresentationFullScreen;
    return editorPage;
}


- (void)Action_Category_ShowViewController {
    FYEditorViewController *viewController = [[FYEditorViewController alloc] init];
    
    [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:viewController animated:YES completion:^{
        
    }];
}


@end
