//
//  DLNSettings.h
//  DLNFoundation
//
//  Created by Linzh on 12/23/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_CLASS_AVAILABLE_IOS(8_0) @interface DLNSysSettings : NSObject

+ (void)openAbout NS_AVAILABLE_IOS(8_0);
+ (void)openAppSelfSettings NS_AVAILABLE_IOS(8_0);
+ (void)openWiFi NS_AVAILABLE_IOS(8_0);
+ (void)openNotification NS_AVAILABLE_IOS(8_0);
@end
