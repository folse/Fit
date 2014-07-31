//
//  FTAppDelegate.m
//  Fit
//
//  Created by folse on 7/23/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTAppDelegate.h"

@implementation FTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setBarTintColor:APP_COLOR];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont fontWithName:@"Helvetica-Light" size:20.0],NSFontAttributeName,nil]];

    [application setStatusBarStyle:UIStatusBarStyleLightContent];
    
   
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue" size:10.0f],
                                                        NSForegroundColorAttributeName : [UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1]
                                                        } forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue" size:10.0f],
                                                        NSForegroundColorAttributeName : [UIColor colorWithRed:18.0/255.0 green:168.0/255.0 blue:255.0/255.0 alpha:1]
                                                        } forState:UIControlStateSelected];
    
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:18.0/255.0 green:168.0/255.0 blue:255.0/255.0 alpha:1.0]];
    
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarPrograms = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarArticles = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarCalories = [tabBar.items objectAtIndex:2];

   
    tabBarPrograms.title = @"锻炼计划";
    tabBarArticles.title = @"新闻文章";
    tabBarCalories.title = @"卡路里计算器";
    
    tabBarPrograms.image = [[UIImage imageNamed:@"programsbtn.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarPrograms.selectedImage = [UIImage imageNamed:@"programsbtn.png"];
    
    tabBarArticles.image = [[UIImage imageNamed:@"articlesbtn.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarArticles.selectedImage = [UIImage imageNamed:@"articlesbtn.png"];
    
    tabBarCalories.image = [[UIImage imageNamed:@"caloriesbtn.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarCalories.selectedImage = [UIImage imageNamed:@"caloriesbtn.png"];
  
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
