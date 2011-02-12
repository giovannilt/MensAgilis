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
	
	UIView *atenea;
	UIView *donna;
	UIView *maxClub;
	UIView *uomo;
	
	UITabBar *tabBar;
	UINavigationBar *navBar;
	
	UIImageView *ateneaImgView;
	UIImageView *uomoImgView;
	UIImageView *donnaImgView;
	UIImageView *maxClubImgView;
	
	UIPageControl *pageControl;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UIView *atenea;
@property (nonatomic, retain) IBOutlet UIView *donna;
@property (nonatomic, retain) IBOutlet UIView *maxClub;
@property (nonatomic, retain) IBOutlet UIView *uomo;

@property (nonatomic, retain) IBOutlet UITabBar *tabBar;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;

@property (nonatomic, retain) IBOutlet UIImageView *ateneaImgView;
@property (nonatomic, retain) IBOutlet UIImageView *uomoImgView;
@property (nonatomic, retain) IBOutlet UIImageView *donnaImgView;
@property (nonatomic, retain) IBOutlet UIImageView *maxClubImgView;

@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

- (void) pageChanger:(id)sender;

@end

