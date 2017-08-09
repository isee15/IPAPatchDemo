//
//  UIWindow+FlexSetting.m
//  IPAPatch
//
//  Created by rui on 2017/8/7.
//  Copyright © 2017年 Weibo. All rights reserved.
//

#import "UIWindow+FlexSetting.h"

#if DEBUG

#import "FLEX/FLEXManager.h"

#endif

@implementation UIWindow (FlexSetting)

#if DEBUG

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    [super motionBegan:motion withEvent:event];
    if (motion == UIEventSubtypeMotionShake) {
        [[FLEXManager sharedManager] showExplorer];
    }
}

#endif

@end
