//
//  CustomView.m
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)onButtonTapped:(UIButton *)sender {
    [self.delegate pictureCollectionViewCell:self didTapButton:sender];
}



@end
