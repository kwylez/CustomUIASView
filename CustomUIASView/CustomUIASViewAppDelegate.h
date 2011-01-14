//
//  CustomUIASViewAppDelegate.h
//  CustomUIASView
//
//  Created by Cory D. Wiles on 1/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomUIASViewViewController;

@interface CustomUIASViewAppDelegate : NSObject <UIApplicationDelegate> {
@private

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CustomUIASViewViewController *viewController;

@end
