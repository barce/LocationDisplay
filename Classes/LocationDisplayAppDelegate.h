//
//  LocationDisplayAppDelegate.h
//  LocationDisplay
//
//  Created by barce on 1/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LocationDisplayViewController;

@interface LocationDisplayAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LocationDisplayViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LocationDisplayViewController *viewController;

@end

