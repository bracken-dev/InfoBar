//
//  InfoBarAppDelegate.m
//  InfoBar
//
//  Created by Junior B. on 20.02.11.
//  Copyright 2011 ThinkDiff.ch. All rights reserved.
//

#import "InfoBarAppDelegate.h"
#import "JBInfoBarManager.h"

@implementation InfoBarAppDelegate


@synthesize window=_window;

@synthesize tabBarController=_tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the tab bar controller's current view as a subview of the window
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    // Add the infoBar
    [[JBInfoBarManager sharedManager] initInfoBarWithFrame:CGRectMake(0, self.tabBarController.tabBar.frame.origin.y,
                                                                      self.tabBarController.tabBar.frame.size.width, 30)
                                           backgroundColor:[UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.6f]
                                                 textColor:[UIColor whiteColor]
                                                  textFont:[UIFont systemFontOfSize:17.0f]];
    
    [self.tabBarController.view insertSubview:[[JBInfoBarManager sharedManager] infoBar] belowSubview:self.tabBarController.tabBar];
    [[JBInfoBarManager sharedManager] showInfoBarWithMessage:@"Test Up!"];
    
    return YES;
}

- (void)hideInfoBar 
{
    [[JBInfoBarManager sharedManager] hideInfoBarWithMessage:@"Finished!"];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
