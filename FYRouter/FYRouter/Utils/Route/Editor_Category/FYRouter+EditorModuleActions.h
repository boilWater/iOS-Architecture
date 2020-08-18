//
//  FYRouter+EditorModuleActions.h
//  FYRouter
//
//  Created by admin on 2019/12/9.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYRouter.h"

@interface FYRouter (EditorModuleActions)

- (UIViewController *)Editor_ShowViewController;

- (UIViewController *)Editor_ShowViewController:(NSString *)title previewImage:(UIImage *)image;


- (void)Editor_Show;

@end

