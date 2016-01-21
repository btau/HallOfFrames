//
//  ViewController.m
//  HallOfFrames
//
//  Created by Brett Tau on 1/20/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property NSArray *pictures;
@property NSIndexPath *selectedPath;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pictures = [NSArray new];
    Picture *picOne = [[Picture alloc]initWithImage:[UIImage imageNamed:@"ernieBanks"] andFrameColor:[UIColor whiteColor]];
    Picture *picTwo = [[Picture alloc]initWithImage:[UIImage imageNamed:@"ronSanto"] andFrameColor:[UIColor whiteColor]];
    Picture *picThree = [[Picture alloc]initWithImage:[UIImage imageNamed:@"ryneSandberg"] andFrameColor:[UIColor whiteColor]];
    Picture *picFour = [[Picture alloc]initWithImage:[UIImage imageNamed:@"sammySosa"] andFrameColor:[UIColor whiteColor]];
    Picture *picFive = [[Picture alloc]initWithImage:[UIImage imageNamed:@"willFerrell"] andFrameColor:[UIColor whiteColor]];
    
    self.pictures = [NSArray arrayWithObjects:picOne, picTwo, picThree, picFour, picFive, nil];
    
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
    Picture *pic = [self.pictures objectAtIndex:indexPath.row];
    cell.imageView.image = pic.image;
    cell.backgroundColor = pic.frameColor;
    
    return cell;
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedPath = indexPath;
    
    CustomView *customView = [[[NSBundle mainBundle]loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    
    customView.frame = self.view.frame;
    
    customView.delegate = self;
    
    [self.view addSubview:customView];
    
}


-(void)customView:(UIView *)view didTapButton:(UIButton *)button {
    Picture *pic = [self.pictures objectAtIndex:self.selectedPath.row];
    pic.frameColor = button.backgroundColor;
    
    PictureCollectionViewCell *cell = (PictureCollectionViewCell *) [self.collectionView cellForItemAtIndexPath:self.selectedPath];
    cell.backgroundColor = pic.frameColor;
}


@end
