//
//  FYEditorViewController.m
//  FYRouter
//
//  Created by admin on 2019/10/26.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYEditorViewController.h"

@interface FYEditorViewController ()

@end

@implementation FYEditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    //self.title = @"Edit Page";
    
    UILabel *titleLab = [[UILabel alloc] init];
    titleLab.frame = CGRectMake(0, 200, 300, 400);
    titleLab.backgroundColor = [UIColor blueColor];
    titleLab.text = @"Back Ground Color";
    
    [self.view addSubview:titleLab];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
