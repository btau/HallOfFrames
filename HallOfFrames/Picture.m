//
//  Picture.m
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "Picture.h"

@implementation Picture

- (instancetype)initWithImage:(UIImage *)image andFrameColor:(UIColor *)frameColor {
    self = [super init];
    if (self) {
        self.image = image;
        self.frameColor = frameColor;
    }
    return self;
}

@end
