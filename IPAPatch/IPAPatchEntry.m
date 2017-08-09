//
//  IPAPatchEntry.m
//  IPAPatch
//
//  Created by wutian on 2017/3/17.
//  Copyright © 2017年 Weibo. All rights reserved.
//

#import "IPAPatchEntry.h"
#import <UIKit/UIKit.h>
//#import <Cycript/Cycript.h>

@implementation IPAPatchEntry
static id notificationHandler = nil;

+ (void)load {
    // DO YOUR WORKS...

    // For Example:
    [self for_example_showAlert];
//    notificationHandler = [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
//
//        CYListenServer(4567);
//    }];

}

+ (void)for_example_showAlert {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        id debugClass = NSClassFromString(@"UIDebuggingInformationOverlay");
        [debugClass performSelector:NSSelectorFromString(@"prepareDebuggingOverlay")];

        id debugOverlayInstance = [debugClass performSelector:NSSelectorFromString(@"overlay")];
        [debugOverlayInstance performSelector:NSSelectorFromString(@"toggleVisibility")];

        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hacked" message:@"Hacked with IPAPatch" preferredStyle:UIAlertControllerStyleAlert];
        [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:NULL]];
        UIViewController *controller = [UIApplication sharedApplication].keyWindow.rootViewController;
        while (controller.presentedViewController) {
            controller = controller.presentedViewController;
        }
        [controller presentViewController:alertController animated:YES completion:NULL];
    });
}

@end
