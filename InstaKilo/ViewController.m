//
//  ViewController.m
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "ViewController.h"
#import "myCollectionViewCell.h"
#import "ImagesSetup.h"
#import "instaPhoto.h"
#import "HeaderCollectionReusableView.h"

@interface ViewController () <UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UIView *collectionView;
// @property (strong, nonatomic) NSArray<UIImage *> *images;
@property (strong, nonatomic) NSDictionary *images;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    ImagesSetup *newSetup = [ImagesSetup new];
    self.images = [newSetup catagorize];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    NSArray *objArray = [self.images allKeys];
    
    return objArray.count;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSArray *objArray = [self.images allValues];
    NSArray *imagesArray = objArray[section];

    return imagesArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    myCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCollectionViewCell" forIndexPath:indexPath];
    
 
    NSArray *objArray = [self.images allValues];
    
    NSArray *imagesArray = objArray[indexPath.section];
    
    instaPhoto *imageToShow = [imagesArray objectAtIndex:indexPath.row];
    
//    instaPhoto *imageToShow = [instaPhoto new];
//
//    ImagesSetup *newSetup = [ImagesSetup new];
//    
    
    
    cell.image.image = imageToShow.image;
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"headerView" forIndexPath:indexPath];
        
        // NSString *subject = [self.subjects objectAtIndex:indexPath.section];
        
        NSArray *subjects = [self.images allKeys];
        NSString *subject = [subjects objectAtIndex:indexPath.section];
//
        headerView.sectionHeaderLabel.text = [NSString stringWithFormat:@"%@", subject];
//        
       // headerView.sectionLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.section];
        return headerView;
    }
    return nil;
}

@end
