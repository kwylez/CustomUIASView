//
//  CustomUIASViewViewController.h
//  CustomUIASView
//
//  Created by Cory D. Wiles on 1/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUIASView.h"

#define kUIASHeight 230

@interface CustomUIASViewViewController : UIViewController {
  CustomUIASView *uiasView;
  UIButton *presentASButton;
}

@property (nonatomic, retain) CustomUIASView *uiasView;
@property (nonatomic, retain) IBOutlet UIButton *presentASButton;

- (void)buttonAction;
- (IBAction)presentView:(id)sender;
- (void)dismissView;

@end
