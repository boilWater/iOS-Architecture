//
//  FYHomeViewController.m
//  FYRouter
//
//  Created by admin on 2019/10/26.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FYCameraViewController.h"


@interface FYCameraViewController ()


@end

@implementation FYCameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"Camera Page";
    
    [self.view addSubview:self.backgroundImageView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - Lazying

- (UIImageView *)backgroundImageView {
    if (_backgroundImageView == nil) {
        _backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 340, 300)];
        _backgroundImageView.center = self.view.center;
    }
    
    return _backgroundImageView;
}

@end
