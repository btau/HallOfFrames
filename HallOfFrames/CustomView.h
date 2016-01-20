//
//  CustomView.h
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

- (void)pictureCollectionViewCell:(id)cell didTapButton:(UIButton *)button;

@end

@interface CustomView : UIView

@property (nonatomic, assign) id <CustomViewDelegate> delegate;

@end
