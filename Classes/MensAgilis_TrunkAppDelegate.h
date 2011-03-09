//
//  MensAgilis_TrunkAppDelegate.h
//  MensAgilis-Trunk
//
//  Created by Giovanni La Torre on 1/29/11.
//  Copyright 2011 MensAgilus. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContentController;

@interface MensAgilis_TrunkAppDelegate : NSObject <UIApplicationDelegate> {
    
	UIWindow *window;
	ContentController *contentController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ContentController *contentController;

@end


