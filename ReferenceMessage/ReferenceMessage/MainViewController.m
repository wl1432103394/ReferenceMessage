//
//  MainViewController.m
//  ReferenceMessage
//
//  Created by 王力 on 16/9/12.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self navigationBarAttributeChanges];
}

- (void)navigationBarAttributeChanges {
    self.navigationController.navigationBar.barTintColor = Bar_Tint_Color;
    self.navigationController.navigationBar.tintColor = Tint_Color;

}

- (void)leftBarbuttonItemAction:(UIBarButtonItem *)item {
    
}

- (void)addLeftBarButtonItemWithImage:(UIImage *)image {
    //    UIImage *image = [UIImage imageNamed:@"feed_column"];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(leftBarbuttonItemAction:)];
    self.navigationItem.leftBarButtonItem = leftItem;
}

- (void)addLeftBarButtonItemWithText:(NSString *)text {
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:text style:UIBarButtonItemStyleDone target:self action:@selector(leftBarbuttonItemAction:)];
    [leftItem setTintColor:[UIColor blueColor]];
    self.navigationItem.leftBarButtonItem = leftItem;
}


- (void)rightBarbuttonItemAction:(UIBarButtonItem *)item {
    
}

- (void)addRightBarButtonItemWithImage:(UIImage *)image {
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(rightBarbuttonItemAction:)];
    self.navigationItem.rightBarButtonItem = leftItem;
}

- (void)addRightBarButtonItemWithText:(NSString *)text {
    UIBarButtonItem *rightItem =[[UIBarButtonItem alloc] initWithTitle:text style:UIBarButtonItemStyleDone target:self action:@selector(rightBarbuttonItemAction:)];
    [rightItem setTintColor:[UIColor blueColor]];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)setLeftBarbuttonItemColorWithColor:(UIColor *)color {
    self.navigationItem.leftBarButtonItem.tintColor = color;
}

- (void)setRightBarbuttonItemColorWithColor:(UIColor *)color {
    self.navigationItem.rightBarButtonItem.tintColor = color;
}
- (void)setnavigationItemTitleColorWithColor:(UIColor *)color {
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:color}];
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
