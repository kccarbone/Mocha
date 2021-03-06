//
//  ViewController.h
//  Mocha
//
//  Created by Kyle Carbone on 4/27/14.
//  Copyright (c) 2014 kcarboneapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblIntroText;
@property (strong, nonatomic) IBOutlet UIButton *btnStart;
@property (strong, nonatomic) IBOutlet UIView *vwLoading;

- (IBAction)btnStart_TouchDragOutside:(id)sender;
- (IBAction)btnStart_Clicked:(id)sender;
@end
