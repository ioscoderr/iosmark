#import <UIKit/UIKit.h>

@interface WatermarkView : UIView

extern WatermarkView *wm;
-(instancetype)initWithFrame:(CGRect)frame titleName:(NSString *)titleName_;
-(void)handlePan:(UIPanGestureRecognizer *)gestureRecognizer;
@end
