//
//  CustomView.m
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@property float red;
@property float green;
@property float blue;

@end

@implementation CustomView


- (IBAction)onButtonTapped:(UIButton *)button {
    self.backgroundColor = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:1.0];
    [self.delegate customView:self didTapButton:button];
    [self removeFromSuperview];
}



@end
