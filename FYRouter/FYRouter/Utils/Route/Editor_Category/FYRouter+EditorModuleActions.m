//
//  FYRouter+EditorModuleActions.m
//  FYRouter
//
//  Created by admin on 2019/12/9.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter+EditorModuleActions.h"

NSString * const kFYRouterTargetEditor = @"Editor";


@implementation FYRouter (EditorModuleActions)

- (UIViewController *)Editor_ShowViewController {
    NSDictionary *paramters = @{};
    
    UIViewController *editorPage = [self performTarget:kFYRouterTargetEditor action:@"Category_ViewController" paramters:paramters shouldCacheTarget:false];
    
    if ([editorPage isKindOfClass: [UIViewController class]]) {
        return editorPage;
    }
    
    return [UIViewController new];
}

- (UIViewController *)Editor_ShowViewController:(NSString *)title previewImage:(UIImage *)image {
    NSDictionary *paramters = @{kFYRouterParamtersTitle: title, kFYRouterParamtersImage: image};
    
    UIViewController *editorPage = [self performTarget:kFYRouterTargetEditor action:@"Category_PreViewController" paramters:paramters shouldCacheTarget:false];
    
    if ([editorPage isKindOfClass:[UIViewController class]]) {
        return editorPage;
    }
    
    return [UIViewController new];
}


- (void)Editor_Show {
    NSDictionary *paramters = @{};
    [self performTarget:kFYRouterTargetEditor action:@"Category_ShowViewController" paramters:paramters shouldCacheTarget:false];
}


@end
