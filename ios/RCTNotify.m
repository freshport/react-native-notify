//
//  RCTNotify.m
//  RCTNotify
//
//  Created by NovaCloud on 2017/11/1.
//  Copyright © 2017年 FreshPort. All rights reserved.
//

#import "RCTNotify.h"
#import <React/RCTLog.h>
#import "JDStatusBarNotification.h"

@implementation RCTNotify

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(toast:(NSString *) text) {
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [JDStatusBarNotification showWithStatus:text dismissAfter:2 styleName:JDStatusBarStyleWarning];
    }];
    
     }

@end
