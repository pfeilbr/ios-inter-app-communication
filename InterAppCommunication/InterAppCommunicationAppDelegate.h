//
//  InterAppCommunicationAppDelegate.h
//  InterAppCommunication
//
//  Created by Brian Pfeil on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface InterAppCommunicationAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MainViewController  *mainViewController;

@end
