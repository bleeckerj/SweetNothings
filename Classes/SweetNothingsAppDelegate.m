//
//  SweetNothingsAppDelegate.m
//  SweetNothings
//
//  Created by julian on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SweetNothingsAppDelegate.h"
#import "SweetNothingViewController.h"

@implementation SweetNothingsAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
	UIDevice *device = [UIDevice currentDevice];
	
	[device setProximityMonitoringEnabled:YES];
	
	//[UIApplication sharedApplication].idleTimerDisabled = YES;
	
	NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
	
	[nc addObserver:self selector:@selector(nowProximate:) name:UIDeviceProximityStateDidChangeNotification object:device];
	
	UIViewController *sweetNothingViewController = [[SweetNothingViewController alloc] init];
	
	[window setRootViewController:sweetNothingViewController];

	[sweetNothingViewController release];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)nowProximate:(NSNotification *)note
{
	//NSObject *obj = [note object];
	BOOL proximity = [[note object] proximityState];
	NSLog(@"Proximity! %d", proximity);
	if(proximity) {
		SweetNothingViewController *snvc = (SweetNothingViewController *)[window rootViewController];
		[snvc proximity:proximity];
	}
}

- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
