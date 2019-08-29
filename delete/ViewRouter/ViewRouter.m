//
//  ViewRouter.m
//  delete
//
//  Created by hrt03 on 2019/8/28.
//Copyright © 2019 dengchaojie. All rights reserved.
//

#import "ViewRouter.h"
#import <ZIKRouter/ZIKRouterInternal.h>
#import <ZIKRouter/ZIKViewRouterInternal.h>
#import "ThirdViewController.h"
#import "ThirdViewProtocol.h"

DeclareRoutableView(ThirdViewController, ViewRouter)

@interface ViewRouter ()

@end

@implementation ViewRouter

+ (void)registerRoutableDestination {
    [self registerExclusiveView:[ThirdViewController class]];
    [self registerViewProtocol:ZIKRoutable(ThirdViewProtocol)];
}

- (nullable ThirdViewController *)destinationWithConfiguration:(ZIKViewRouteConfiguration *)configuration {
//#error TODO: instantiate destination
    // Instantiate destination with configuration. Return nil if configuration is invalid.
    ThirdViewController *destination = [[ThirdViewController alloc] init];
    
    return destination;
}

- (void)prepareDestination:(ThirdViewController *)destination configuration:(ZIKViewRouteConfiguration *)configuration {
    // Prepare destination
}

/*
// If the destiantion is UIView / NSView, override and return route types for UIView / NSView
+ (ZIKViewRouteTypeMask)supportedRouteTypes {
    return ZIKViewRouteTypeMaskViewDefault;
}
 */

@end
