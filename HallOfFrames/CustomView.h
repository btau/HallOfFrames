//
//  CustomView.h
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomView;

@protocol CustomViewDelegate <NSObject>

- (void)customView:(UIView *)view didTapButton:(UIButton *)button;

@end

@interface CustomView : UIView

@property (nonatomic, assign) id <CustomViewDelegate> delegate;

@end
