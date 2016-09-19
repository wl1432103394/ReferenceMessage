//
//  AppDelegate.m
//  ReferenceMessage
//
//  Created by 王力 on 16/9/12.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "AppDelegate.h"
#import "WLArticleViewController.h"
#import "WLMessageViewController.h"
#import "WLMeViewController.h"
#import "WLMoreViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    // Override point for customization after application launch.
    WLArticleViewController *articleVC = [[WLArticleViewController alloc] init];
    WLMessageViewController *messageVC = [[WLMessageViewController alloc] init];
    WLMeViewController *meVC = [[WLMeViewController alloc] init];
    WLMoreViewController *moreVC = [[WLMoreViewController alloc] init];
    
    UINavigationController *arricleNV = [[UINavigationController alloc] initWithRootViewController:articleVC];
    UINavigationController *messageNV = [[UINavigationController alloc] initWithRootViewController:messageVC];
    UINavigationController *meNV = [[UINavigationController alloc] initWithRootViewController:meVC];
    UINavigationController *moreNV = [[UINavigationController alloc] initWithRootViewController:moreVC];
    
    UIImage *arricleImage = [UIImage imageNamed:@"tab_article@2x"];
    UIImage *messageImage = [UIImage imageNamed:@"tab_message@2x"];
    UIImage *meImage = [UIImage imageNamed:@"tab_me@2x"];
    UIImage *moreImage = [UIImage imageNamed:@"tab_more@2x"];
    
    UIImage *arricleSelectedImage = [UIImage imageNamed:@"tab_article_pressed@2x"];
    UIImage *messageSelectedImage = [UIImage imageNamed:@"tab_more_message@2x"];
    UIImage *meSelectedImage = [UIImage imageNamed:@"tab_more_me@2x"];
    UIImage *moreSelectedImage = [UIImage imageNamed:@"tab_more_pressed@2x"];
    
    UITabBarItem *arricleTabBarItem = [[UITabBarItem alloc] initWithTitle:@"文章" image:arricleImage selectedImage:arricleSelectedImage];
    UITabBarItem *messageTabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:messageImage selectedImage:messageSelectedImage];
    UITabBarItem *meTabBarItem = [[UITabBarItem alloc] initWithTitle:@"我" image:meImage selectedImage:meSelectedImage];
    UITabBarItem *moreTabBarItem = [[UITabBarItem alloc] initWithTitle:@"更多" image:moreImage selectedImage:moreSelectedImage];
    
    arricleNV.tabBarItem = arricleTabBarItem;
    messageNV.tabBarItem = messageTabBarItem;
    meNV.tabBarItem = meTabBarItem;
    moreNV.tabBarItem = moreTabBarItem;
    
    UITabBarController *mainTabBar = [[UITabBarController alloc] init];
    mainTabBar.tabBar.tintColor = Bar_Tint_Color;//改变点击图片的颜色
    mainTabBar.viewControllers = @[arricleNV, messageNV, meNV, moreNV];
    
    self.window.rootViewController = mainTabBar;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
