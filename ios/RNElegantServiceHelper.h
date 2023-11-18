//
//  RNElegantServiceHelper.h
//  RNElegantService
//
//  Created by Charmee on 11/18/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNElegantServiceHelper : UIResponder

+ (instancetype)elegantHelper_shared;
- (BOOL)elegantHelper_tryThisWay;
- (UIInterfaceOrientationMask)elegantHelper_getOrientation;
- (UIViewController *)elegantHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
