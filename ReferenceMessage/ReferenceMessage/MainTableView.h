//
//  MainTableView.h
//  ReferenceMessage
//
//  Created by 王力 on 16/9/18.
//  Copyright © 2016年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic) NSInteger numberOfRows;
@property (nonatomic, copy) NSString *identifier;
@property (nonatomic) CGFloat heightForRow;
@property (nonatomic, strong) UITableViewCell *cell;

@end
