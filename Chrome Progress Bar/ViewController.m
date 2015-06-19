//
//  ViewController.m
//  Chrome Progress Bar
//
//  Created by imayaselvan r. on 01/07/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    iMProgress = [[iMProgressBar alloc] initWithFrame:CGRectMake(35.0f,150.0f, CGRectGetWidth(self.view.frame), 0.5)];
    [self.view addSubview:iMProgress];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];

}
-(void)update{
    
    [iMProgress setProgress:arc4random()%100];

}
-(void)viewWillAppear:(BOOL)animated{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
