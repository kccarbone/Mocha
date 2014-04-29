//
//  ViewController.m
//  Mocha
//
//  Created by Kyle Carbone on 4/27/14.
//  Copyright (c) 2014 kcarboneapps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.vwLoading.transform = CGAffineTransformMakeScale(2, 2);
    self.vwLoading.alpha = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnStart_TouchDragOutside:(id)sender {
    self.lblIntroText.text = @"Dragged out";
}

- (IBAction)btnStart_Clicked:(id)sender {
    
    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.vwLoading.transform = CGAffineTransformMakeScale(1, 1);
        self.vwLoading.alpha = 1;
    } completion:^(BOOL finished){
        [UIView animateWithDuration:.3 delay:0.8 options:UIViewAnimationOptionCurveEaseOut animations:^{
            //self.vwLoading.transform = CGAffineTransformMakeScale(0, 0);
            self.vwLoading.alpha = 0;
        } completion:^(BOOL finished2){
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
    }];
}
@end
