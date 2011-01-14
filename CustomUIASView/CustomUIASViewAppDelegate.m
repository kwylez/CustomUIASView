//
//  CustomUIASViewAppDelegate.m
//  CustomUIASView
//
//  Created by Cory D. Wiles on 1/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomUIASViewAppDelegate.h"

#import "CustomUIASViewViewController.h"

@implementation CustomUIASViewAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Override point for customization after application launch.
   
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  /*
   Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
   */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Save data if appropriate.
}

- (void)dealloc {

  [window release];
  [viewController release];
    [super dealloc];
}

@end
