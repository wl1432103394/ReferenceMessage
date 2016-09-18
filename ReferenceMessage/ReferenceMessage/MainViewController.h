//
//  MainViewController.h
//  ReferenceMessage
//
//  Created by 王力 on 16/9/12.
//  Copyright © 2016年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

- (void)addLeftBarButtonItemWithImage:(UIImage *)image;

- (void)addLeftBarButtonItemWithText:(NSString *)text;

- (void)addRightBarButtonItemWithImage:(UIImage *)image;

- (void)addRightBarButtonItemWithText:(NSString *)text;

- (void)leftBarbuttonItemAction:(UIBarButtonItem *)item;

- (void)rightBarbuttonItemAction:(UIBarButtonItem *)item;
@end
