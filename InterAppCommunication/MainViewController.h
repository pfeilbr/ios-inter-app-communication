//
//  MainViewController.h
//  InterAppCommunication
//
//  Created by Brian Pfeil on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainViewController : UIViewController<UITextViewDelegate> {
    
}

@property (nonatomic, retain) IBOutlet UITextView *textViewURL;
@property (nonatomic, retain) IBOutlet UIButton *launchButton;

- (IBAction)launch:(id)target;
- (IBAction)clear:(id)target;

@end
 