//
//  SweetNothingView.m
//  SweetNothings
//
//  Created by julian on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SweetNothingView.h"


@implementation SweetNothingView
@synthesize sweetNothing;


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
	//CGContextRef context = UIGraphicsGetCurrentContext();
	//[self setBackgroundColor:[UIColor blueColor]];
}


- (void)dealloc {
    [super dealloc];
}


@end
