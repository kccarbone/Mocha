//
//  MochaTabBarController.m
//  Mocha
//
//  Created by Kyle Carbone on 4/27/14.
//  Copyright (c) 2014 kcarboneapps. All rights reserved.
//

#import "MochaTabBarController.h"

@implementation MochaTabBarController
{
    BOOL _firstLoad;
}

- (void)viewDidLoad
{
    _firstLoad = true;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if(_firstLoad)
    {
        [self performSegueWithIdentifier:@"segueIntro" sender:self];
        _firstLoad = false;
    }
}

@end
