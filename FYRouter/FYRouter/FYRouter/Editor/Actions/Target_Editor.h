//
//  Target_Editor.h
//  FYRouter
//
//  Created by admin on 2019/10/26.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_Editor : NSObject

- (UIViewController *)Action_nativeEditorViewController:(NSDictionary *)paramters;

- (id)Action_nativeEditorPresentImage:(NSDictionary *)paramters;

@end

