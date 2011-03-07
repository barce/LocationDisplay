//
//  LocationDisplayViewController.m
//  LocationDisplay
//
//  Created by barce on 1/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LocationDisplayViewController.h"

@implementation LocationDisplayViewController

@synthesize locationManager;
@synthesize locationLabel;
@synthesize longitudeTextField;
@synthesize latitudeTextField;

//START:code.location.viewDidLoad
- (void)viewDidLoad {
	[super viewDidLoad];
	self.locationManager = [[[CLLocationManager alloc] init] autorelease];
	self.locationManager.delegate = self;
	[self.locationManager startUpdatingLocation];
}
//END:code.location.viewDidLoad

//START:code.location.delegate.update
- (void)locationManager:(CLLocationManager *)manager 
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
	latitudeTextField.text = [NSString stringWithFormat:@"%3.5f",
							  newLocation.coordinate.latitude];
	longitudeTextField.text = [NSString stringWithFormat:@"%3.5f", 
							   newLocation.coordinate.longitude];
}
//END:code.location.delegate.update

- (void) sayLocation: (id) sender {
	NSString *latitudeString = latitudeTextField.text;
	NSString *longitudeString = longitudeTextField.text;

	NSString *locationMessage = 
	[[NSString alloc] initWithFormat: @"Location Saved: %@ %@", latitudeString, longitudeString];
	locationLabel.text = locationMessage;
	[locationMessage release];
	/*
	nameField.text = NULL;
	[nameField resignFirstResponder];
	 */
}

- (void)dealloc {
	[locationLabel release];
    [super dealloc];
}

@end
