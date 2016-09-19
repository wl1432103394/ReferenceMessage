//
//  WLMeViewController.m
//  ReferenceMessage
//
//  Created by 王力 on 16/9/18.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "WLMeViewController.h"

@interface WLMeViewController ()

@end

@implementation WLMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.title = @"我";
    UIImage *image = [UIImage imageNamed:@"tab_message@2x"];
    [self addRightBarButtonItemWithImage:image];
    [self setRightBarbuttonItemColorWithColor:[UIColor grayColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
