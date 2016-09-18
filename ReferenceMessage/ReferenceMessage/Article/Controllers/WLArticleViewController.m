//
//  ViewController.m
//  ReferenceMessage
//
//  Created by 王力 on 16/9/12.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "WLArticleViewController.h"
#import "WLSearchResultViewController.h"

@interface WLArticleViewController () <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *contentArray;
@property (nonatomic, strong) UIView *viewForHeaderInSection;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UISearchBar *searchBar;

@end

@implementation WLArticleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addLeftBarButtonItemWithImage:[UIImage imageNamed:@"feed_column"]];
    [self addRightBarButtonItemWithImage:[UIImage imageNamed:@"feed_column"]];
    [self.view addSubview:self.tableView];
//    [self.tableView.tableHeaderView addSubview:self.viewForHeaderInSection];
    [self.viewForHeaderInSection addSubview:self.scrollView];
    [self.viewForHeaderInSection addSubview:self.searchBar];
    
}


- (void)leftBarbuttonItemAction:(UIBarButtonItem *)item {
    NSLog(@"leftBarbuttonItemAction");
}

- (void)rightBarbuttonItemAction:(UIBarButtonItem *)item {
    NSLog(@"rightBarbuttonItemAction");
}
#pragma mark -- UITableViewDelegate, UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"noImageIdentifier" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return self.viewForHeaderInSection;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 100;
}
#pragma mark -- UISearchBarDelegate
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    WLSearchResultViewController *resultVC = [[WLSearchResultViewController alloc] init];
    [self.navigationController pushViewController:resultVC animated:YES];
    NSLog(@"%ld", (long)searchBar.searchBarStyle);
}

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    
    WLSearchResultViewController *resultVC = [[WLSearchResultViewController alloc] init];
    [self.navigationController pushViewController:resultVC animated:YES];

    return YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.searchBar resignFirstResponder];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = self.view.bounds;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"oneImageIdentifier"];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"threeImageIdentifier"];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"noImageIdentifier"];
        
    }
    return _tableView;
}

- (UIView *)viewForHeaderInSection {
    if (!_viewForHeaderInSection) {
        _viewForHeaderInSection = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
        _viewForHeaderInSection.backgroundColor = [UIColor orangeColor];
        
    }
    return _viewForHeaderInSection;
}

- (NSMutableArray *)contentArray {
    if (!_contentArray) {
        _contentArray = [NSMutableArray arrayWithCapacity:1];
    }
    return _contentArray;
}

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 80)];
        _scrollView.contentSize = CGSizeMake(3 * self.view.frame.size.width, 100);
        _scrollView.pagingEnabled = YES;
        for (int i = 0; i < 3; i++) {
            UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background_groupDetail"]];
            imageView.frame = CGRectMake(self.view.frame.size.width * i, 0, self.view.frame.size.width, 80);
            [_scrollView addSubview:imageView];
        }

    }
    return _scrollView;
}

- (UISearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
        _searchBar.delegate = self;
    }
    return _searchBar;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
