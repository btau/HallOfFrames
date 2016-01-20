//
//  ViewController.m
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property NSArray *pictures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pictures = [NSArray new];
    Picture *picOne = [[Picture alloc]initWithImage:[UIImage imageNamed:@"ernieBanks"] andFrameColor:[UIColor blackColor]];
    Picture *picTwo = [[Picture alloc]initWithImage:[UIImage imageNamed:@"ronSanto"] andFrameColor:[UIColor blackColor]];
    Picture *picThree = [[Picture alloc]initWithImage:[UIImage imageNamed:@"ryneSandberg"] andFrameColor:[UIColor blackColor]];
    Picture *picFour = [[Picture alloc]initWithImage:[UIImage imageNamed:@"sammySosa"] andFrameColor:[UIColor blackColor]];
    Picture *picFive = [[Picture alloc]initWithImage:[UIImage imageNamed:@"willFarrell"] andFrameColor:[UIColor blackColor]];
    
    self.pictures = [NSArray arrayWithObjects:picOne, picTwo, picThree, picFour, picFive, nil];
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}




@end
