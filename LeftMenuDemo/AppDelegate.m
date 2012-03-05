//
//  AppDelegate.m
//  LeftMenuDemo
//
//  Created by YoonBong Kim on 12. 3. 5..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "MenuViewController.h"
#import "YBSwipeViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_menuViewCntrlr release];
    _menuViewCntrlr = nil;
    
    [_window release];
    [super dealloc];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
    _menuViewCntrlr = [[MenuViewController alloc] init];
    
    
    MainViewController *mainViewCntrlr = [[MainViewController alloc] init];
    UINavigationController *mainNavigationCntrlr = [[UINavigationController alloc] initWithRootViewController:mainViewCntrlr];
    
    MenuViewController *menuViewCntrlr = [[MenuViewController alloc] init];
    UINavigationController *menuNavigationCntrlr = [[UINavigationController alloc] initWithRootViewController:menuViewCntrlr];
    
    YBSwipeViewController *swipeRootViewCntrlr = [[YBSwipeViewController alloc] initWithMainViewController:mainNavigationCntrlr menuViewController:menuNavigationCntrlr];

    
    self.window.rootViewController = swipeRootViewCntrlr;
    
    [mainViewCntrlr release];
    [mainNavigationCntrlr release];
    
    [menuViewCntrlr release];
    [menuNavigationCntrlr release];
    
    [swipeRootViewCntrlr release];
    
    [self.window makeKeyAndVisible];
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


- (void)showMenu    {
    
    _menuViewCntrlr.view.frame = CGRectMake(0.0f, 0.0f, 260.0f, 416.0f);
    [self.window addSubview:_menuViewCntrlr.view];
}

@end
