//
//  Picture.h
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIColor *frameColor;
@property UIImage *image;

- (instancetype)initWithImage:(UIImage *)image andFrameColor:(UIColor *)frameColor;

@end
