//
//  MensAgilis_TrunkAppDelegate.m
//  MensAgilis-Trunk
//
//  Created by Giovanni La Torre on 1/29/11.
//  Copyright 2011 MensAgilus. All rights reserved.
//

#import "MensAgilis_TrunkAppDelegate.h"

@implementation MensAgilis_TrunkAppDelegate

@synthesize window;

@synthesize atenea;
@synthesize donna;
@synthesize maxClub;
@synthesize uomo;


@synthesize tabBar;
@synthesize navBar;

@synthesize ateneaImgView;
@synthesize uomoImgView;
@synthesize donnaImgView;
@synthesize maxClubImgView;

@synthesize pageControl;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	
	
    [self.window makeKeyAndVisible];
    
    return YES;
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


- (void)pageChanger:(id)sender {
	NSLog( @"CAZZO: %d", [pageControl currentPage]);
	
	switch ([pageControl currentPage]) {
		case 0:
			[uomo removeFromSuperview];
			[donna removeFromSuperview];
			[maxClub removeFromSuperview];
			[[self window] addSubview:atenea];
			break;
	    case 1:
			[atenea removeFromSuperview];
			[uomo removeFromSuperview];
			[maxClub removeFromSuperview];
			[[self window] addSubview:donna];
			break;
		case 2:
			[atenea removeFromSuperview];
			[donna removeFromSuperview];
			[uomo removeFromSuperview];
			[[self window] addSubview:maxClub];
			break;
		case 3:
			[atenea removeFromSuperview];
			[donna removeFromSuperview];
			[maxClub removeFromSuperview];
			[[self window] addSubview:uomo];
			break;
		default:
			break;
	}
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
