//
//  CustomUIASViewViewController.m
//  CustomUIASView
//
//  Created by Cory D. Wiles on 1/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomUIASViewViewController.h"

@implementation CustomUIASViewViewController

@synthesize uiasView;
@synthesize presentASButton;

- (void)dealloc {
  [uiasView release];
  [presentASButton release];
  [super dealloc];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
  
  self.uiasView = [[CustomUIASView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height + kUIASHeight), 320, 300)];
  
  [self.uiasView.firstButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
  [self.uiasView.secondButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
  [self.uiasView.thirdButton addTarget:self action:@selector(dismissView) forControlEvents:UIControlEventTouchUpInside];
  
  [self.view addSubview:self.uiasView];
  
  [super viewDidLoad];
}

- (void)viewDidUnload {
  
  self.presentASButton = nil;
  
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return YES;
}

- (void)buttonAction {
  NSLog(@"hello world");
  self.presentASButton.enabled = YES;
}

#pragma mark -
#pragma mark Custom
- (IBAction)presentView:(id)sender {
  
  [UIView animateWithDuration:0.60f animations:^{
    
    CGRect uiasViewFrame   = self.uiasView.frame;
    uiasViewFrame.origin.y = (self.view.frame.size.height - kUIASHeight);
    
    self.uiasView.frame = uiasViewFrame;
  }];
  
  self.presentASButton.enabled = NO;
}

- (void)dismissView {
  
  [UIView animateWithDuration:0.75f animations:^{
    
    CGRect uiasViewFrame   = self.uiasView.frame;
    uiasViewFrame.origin.y = (self.view.frame.size.height + kUIASHeight);
    
    self.uiasView.frame = uiasViewFrame;
  }];
  
  self.presentASButton.enabled = YES;
}

@end
