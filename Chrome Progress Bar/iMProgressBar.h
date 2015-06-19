//
//  ViewController.h
//  Chrome Progress Bar
//
//  Created by imayaselvan r. on 01/07/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iMProgressBar : UIView
{
    UIView *barViewFill;
}
@property(nonatomic ,retain)UIColor *barColour;

- (void)setProgress:(int)progress ;
@end
