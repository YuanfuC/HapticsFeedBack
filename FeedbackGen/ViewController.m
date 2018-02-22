//
//  ViewController.m
//  FeedbackGen
//
//  Created by ChenYuanfu on 2018/2/22.
//  Copyright © 2018年 ChenYuanfu. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()<UIGestureRecognizerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)playSyetemSound1 {
    AudioServicesPlaySystemSound(1519);
}

- (IBAction)playSyetemSound2 {
    AudioServicesPlaySystemSound(1520);
}

- (IBAction)playSyetemSound3 {
    AudioServicesPlaySystemSound(1521);
}

- (IBAction)impactFeedbackLight {
    UIImpactFeedbackGenerator *impactFBG = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleLight];
    [impactFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [impactFBG impactOccurred];
    });
}

- (IBAction)impactFeedbackMedium {
    UIImpactFeedbackGenerator *impactFBG = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleMedium];
    [impactFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [impactFBG impactOccurred];
    });
}

- (IBAction)impactFeedbackHeavy {
    UIImpactFeedbackGenerator *impactFBG = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleHeavy];
    [impactFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [impactFBG impactOccurred];
    });
}

- (IBAction)selectionFeedBackChange {
    UISelectionFeedbackGenerator *selelctionFBG = [[UISelectionFeedbackGenerator alloc] init];
    [selelctionFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [selelctionFBG selectionChanged];
    });
}

- (IBAction)notifactionfeadbackSuccess {
    UINotificationFeedbackGenerator *notificationFBG = [[UINotificationFeedbackGenerator alloc] init];
    [notificationFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [notificationFBG notificationOccurred:UINotificationFeedbackTypeSuccess];
    });
}
- (IBAction)notifactionfeadbackWarning {
    UINotificationFeedbackGenerator *notificationFBG = [[UINotificationFeedbackGenerator alloc] init];
    [notificationFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [notificationFBG notificationOccurred:UINotificationFeedbackTypeWarning];
    });
}
- (IBAction)notifactionfeadbackError {
    UINotificationFeedbackGenerator *notificationFBG = [[UINotificationFeedbackGenerator alloc] init];
    [notificationFBG prepare];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [notificationFBG notificationOccurred:UINotificationFeedbackTypeError];
    });
}

@end
