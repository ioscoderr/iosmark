#import "watermark.h"

@interface WatermarkView ()

@end


@implementation WatermarkView {
    CGPoint lastLocation;
}

- (instancetype)initWithFrame:(CGRect)frame titleName:(NSString *)titleName_{
    self = [super initWithFrame:frame];
    if (self) {
        //view of frame
        self.backgroundColor = [UIColor blackColor];
        self.hidden = NO;
        self.layer.cornerRadius = 10.0;
        self.layer.masksToBounds = YES;

        
        //name
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        titleLabel.text = titleName_;
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.font = [UIFont systemFontOfSize:20.0];
        titleLabel.adjustsFontSizeToFitWidth = YES;
        titleLabel.minimumScaleFactor = 0.5;
        titleLabel.center = CGPointMake(frame.size.width / 2, frame.size.height / 2);
        [self addSubview:titleLabel]; 
        
        UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        [self addGestureRecognizer:panGestureRecognizer];
    }
    return self;
}

- (void)handlePan:(UIPanGestureRecognizer *)gestureRecognizer {
    CGPoint translation = [gestureRecognizer translationInView:self.superview];
    
    CGPoint newCenter = CGPointMake(self.center.x + translation.x, self.center.y + translation.y);
    
    newCenter.x = MIN(MAX(newCenter.x, self.frame.size.width / 2), self.superview.frame.size.width - self.frame.size.width / 2);
    newCenter.y = MIN(MAX(newCenter.y, self.frame.size.height / 2), self.superview.frame.size.height - self.frame.size.height / 2);
    
    self.center = newCenter;
    
    [gestureRecognizer setTranslation:CGPointZero inView:self.superview];
}

@end
