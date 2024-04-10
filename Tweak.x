#import "Helper.h"

WatermarkView *wm;

void setupWatermark() {
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    
    CGFloat wmWidth = 130;
    CGFloat wmHeight = 50;
    CGFloat wmX = CGRectGetWidth(mainScreenBounds) - wmWidth - 50;
    CGFloat wmY = 50;

    
    wm = [[WatermarkView alloc] initWithFrame:CGRectMake(wmX, wmY, wmWidth, wmHeight) titleName:@"iosdev"];

    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    [keyWindow addSubview:wm];

}

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
    setupWatermark();
}

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}

