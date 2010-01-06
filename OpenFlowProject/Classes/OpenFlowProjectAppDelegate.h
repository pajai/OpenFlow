//
//  OpenFlowProjectAppDelegate.h
//  OpenFlowProject
//
//  Created by jonathan on 1/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OpenFlowProjectViewController;

@interface OpenFlowProjectAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    OpenFlowProjectViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet OpenFlowProjectViewController *viewController;

@end

