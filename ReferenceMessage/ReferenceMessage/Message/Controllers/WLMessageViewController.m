//
//  MessageViewController.m
//  ReferenceMessage
//
//  Created by 王力 on 16/9/18.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "WLMessageViewController.h"
#import "WLMessageTableView.h"

@interface WLMessageViewController ()

@end

@implementation WLMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"消息";
    [self addRightBarButtonItemWithText:@"设置"];
//    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];//设置rightBarButtonItem的颜色
//    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]];//设置title颜色
    WLMessageTableView *tableView = [[WLMessageTableView alloc] initWithFrame:self.view.bounds];
    tableView.cell = [[UITableViewCell alloc] init];
    [tableView addSubview:tableView.tableView];
    tableView.cell.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
    tableView.heightForRow = 30;
    tableView.numberOfRows = 20;
    tableView.identifier = @"cell1";
    [self.view addSubview:tableView];
    
    [self setnavigationItemTitleColorWithColor:[UIColor whiteColor]];
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
