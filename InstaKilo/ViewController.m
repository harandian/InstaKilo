//
//  ViewController.m
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "ViewController.h"
#import "myCollectionViewCell.h"

@interface ViewController () <UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UIView *collectionView;
@property (strong, nonatomic) NSArray<UIImage *> *images;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     self.images=@[[UIImage imageNamed:@"Rick1"],
                                 [UIImage imageNamed:@"Rick2"],
                                 [UIImage imageNamed:@"Rick3"],
                                 [UIImage imageNamed:@"Rick4"],
                                 //[UIImage imageNamed:@"Rick5"],
                                 [UIImage imageNamed:@"Rick6"],
                                 [UIImage imageNamed:@"Rick7"],
                                 [UIImage imageNamed:@"Rick8"],
                                 [UIImage imageNamed:@"Rick9"],
                                 [UIImage imageNamed:@"Rick10"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.images.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    myCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCollectionViewCell" forIndexPath:indexPath];
    
    UIImage *imageToShow = [self.images objectAtIndex:indexPath.row];
    
    
    cell.image.image = imageToShow;
    return cell;
}

//-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
//    
//    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
//        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"headerView" forIndexPath:indexPath];
//        headerView.sectionLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.section];
//        return headerView;
//    }
//    return nil;
//}

@end
