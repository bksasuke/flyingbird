//
//  DemoSlider.m
//  UISlider
//
//  Created by student on 9/30/15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "DemoSlider.h"

@interface DemoSlider ()
{
    
  NSTimer* _timer;
    __weak IBOutlet UISlider *slider;

}
@end

@implementation DemoSlider

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [NSTimer scheduledTimerWithTimeInterval:.1
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    slider.transform = CGAffineTransformMakeRotation(M_PI_4);
    slider.tintColor = [UIColor redColor];
    slider.thumbTintColor = [UIColor blueColor];
}
-(void)onTimer {
    slider.value -=0.05;
        if (slider.value<0) {
        slider.value =1;
        [_timer invalidate];
    }


}
@end
