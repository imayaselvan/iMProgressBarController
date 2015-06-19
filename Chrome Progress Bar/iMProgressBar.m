//
//  ViewController.h
//  Chrome Progress Bar
//
//  Created by imayaselvan r. on 01/07/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "iMProgressBar.h"

@implementation iMProgressBar
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createUI];
    }
    return self;
}

-(void) createUI
{
    barViewFill = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    barViewFill.backgroundColor = [UIColor colorWithRed:36.0f/255.0f green:180.0f/255.0f blue:240.0f/255.0f alpha:1];
    barViewFill.frame = CGRectMake(0, 0, 0, 0);
    [self addSubview:barViewFill];
    
    
}
-(void)setBarColour:(UIColor *)barColour{
    
    barViewFill.backgroundColor = barColour;
}

- (void)setProgress:(int)progress
{
    
    float Progress  = (float)progress/(float)100;
    int Finalprogress  = ceilf(Progress * self.frame.size.width);
    barViewFill.frame = CGRectMake(0, 0, Finalprogress, self.frame.size.height);
    
}

@end
