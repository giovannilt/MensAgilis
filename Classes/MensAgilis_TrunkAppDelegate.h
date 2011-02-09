//
//  MensAgilis_TrunkAppDelegate.h
//  MensAgilis-Trunk
//
//  Created by Giovanni La Torre on 1/29/11.
//  Copyright 2011 MensAgilus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MensAgilis_TrunkAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	UIBarItem *ateneaBtn;
	UIBarItem *donnaBtn;
	UIBarItem *maxClubBtn;
	UIBarItem *uomoBtn;
	
	UIToolbar *toolBar;
	
	UIImageView *pictureView;
	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UIBarItem *ateneaBtn;
@property (nonatomic, retain) IBOutlet UIBarItem *donnaBtn;
@property (nonatomic, retain) IBOutlet UIBarItem *maxClubBtn;
@property (nonatomic, retain) IBOutlet UIBarItem *uomoBtn;
@property (nonatomic, retain) IBOutlet UIImageView *pictureView;
@property (nonatomic, retain) IBOutlet UIToolbar *toolBar;


- (IBAction)barItemClick:(id)sender;



@end

