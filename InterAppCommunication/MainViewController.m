//
//  MainViewController.m
//  InterAppCommunication
//
//  Created by Brian Pfeil on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

@synthesize textViewURL=_textViewURL;
@synthesize launchButton=_launchButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *savedURLString = [[NSUserDefaults standardUserDefaults] valueForKey:@"URL"];
    if (savedURLString) {
        _textViewURL.text = savedURLString;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView {
    [[NSUserDefaults standardUserDefaults] setValue:_textViewURL.text forKey:@"URL"];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        [self launch:self];
        return FALSE;
    }
    // For any other character return TRUE so that the text gets added to the view
    return TRUE;
}

- (IBAction)launch:(id)target {
    NSString* urlString = _textViewURL.text;
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

- (IBAction)clear:(id)target {
    _textViewURL.text = @"";
    [_textViewURL becomeFirstResponder];
}

@end
