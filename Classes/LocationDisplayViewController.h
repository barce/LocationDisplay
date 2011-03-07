//
//  LocationDisplayViewController.h
//  LocationDisplay
//
//  Created by barce on 1/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationDisplayViewController : UIViewController 
<CLLocationManagerDelegate> 
{
	CLLocationManager *locationManager;
	UITextField *longitudeTextField;
	UITextField *latitudeTextField;
	// store latitude and longitude here
	UILabel *locationLabel;


	
	
}

- (IBAction) sayLocation: (id) sender;

@property(nonatomic, retain) CLLocationManager *locationManager;
@property(nonatomic, retain) IBOutlet UITextField *longitudeTextField;
@property(nonatomic, retain) IBOutlet UITextField *latitudeTextField;
@property(nonatomic, retain) IBOutlet UILabel *locationLabel;



@end

