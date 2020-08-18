//
//  ViewController.m
//  FYRouter
//
//  Created by admin on 2019/10/25.
//  Copyright © 2019 admin. All rights reserved.
//

#import "ViewController.h"
#import "FYRouter+EditorModuleActions.h"
#import "FYRouter+CameraModuleActions.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


#pragma mark - Response

- (IBAction)clickEditorWithEvents:(UIButton *)sender {
    UIViewController *editorViewController = [[FYRouter shareInstance] Editor_ShowViewController];
       
   [self presentViewController:editorViewController animated:true completion:^{
       
   }];
}

- (IBAction)clickCameraWithEvents:(UIButton *)sender {
    UIViewController *cameraViewController = [[FYRouter shareInstance] Camera_ShowViewController];
    
    [self presentViewController:cameraViewController animated:true completion:^{
        
    }];
    
}




#pragma mark - Lazying


@end
