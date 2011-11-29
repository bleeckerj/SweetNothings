    //
//  SweetNothingViewController.m
//  SweetNothings
//
//  Created by julian on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SweetNothingViewController.h"
#import "SweetNothingView.h"

@implementation SweetNothingViewController


// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}

- (void)proximity:(BOOL)_proximity {
	
	proximity = _proximity;
	SweetNothingView *snv = (SweetNothingView *)[self view];
	UIColor *currentColor = [snv backgroundColor];
	if([currentColor CGColor] == [[UIColor blueColor] CGColor]) {
		[snv setBackgroundColor: [UIColor greenColor]];
	} else {
		[snv setBackgroundColor: [UIColor blueColor]];
	}
	[snv setNeedsDisplay];
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {

	SweetNothingView *snv = [[SweetNothingView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	[snv setBackgroundColor:[UIColor grayColor]];
	[self setView:snv];
	[snv release];

}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
