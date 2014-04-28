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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnStart_TouchDragOutside:(id)sender {
    self.lblIntroText.text = @"Dragged out";
}

- (IBAction)btnStart_Clicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
