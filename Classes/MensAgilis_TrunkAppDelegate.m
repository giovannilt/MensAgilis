//
//  MensAgilis_TrunkAppDelegate.m
//  MensAgilis-Trunk
//
//  Created by Giovanni La Torre on 1/29/11.
//  Copyright 2011 MensAgilus. All rights reserved.
//

#import "MensAgilis_TrunkAppDelegate.h"
#import "ContentController.h"

@implementation MensAgilis_TrunkAppDelegate

@synthesize window, contentController;

- (void)applicationDidFinishLaunching:(UIApplication *)application{
	NSString *nibTitle = @"PadContent";
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){
		nibTitle = @"PhoneContent";
    }
    [[NSBundle mainBundle] loadNibNamed:nibTitle owner:self options:nil];

    [self.window addSubview:self.contentController.view];
	[window makeKeyAndVisible];
}

- (void)dealloc{
    [window release];
    [contentController release];
    
    [super dealloc];
}

@end

