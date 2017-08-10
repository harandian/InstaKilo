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
@property (strong, nonatomic) NSMutableArray *people;
@property (strong, nonatomic) NSMutableArray *location;
@property (nonatomic, assign) BOOL segmentIsPeople;
@property (weak, nonatomic) IBOutlet UICollectionView *theRealCollectionView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    ImagesSetup *newSetup = [ImagesSetup new];
    self.images = [newSetup catagorize];
    
    self.people = [NSMutableArray new];
    self.location = [NSMutableArray new];
    
    [self.people addObject:[self.images valueForKey:@"Rick Photos"]];
    [self.people addObject:[self.images valueForKey:@"Morty Photos"]];
    [self.people addObject:[self.images valueForKey:@"Photos"]];
    [self.location addObject:[self.images valueForKey:@"Earth Photos"]];
    [self.location addObject:[self.images valueForKey:@"Space Photos"]];

    
    NSLog(@"Number in ppl array %lu and %lu location array", ((unsigned long)self.people.count), (unsigned long)self.location.count);
    
    self.segmentIsPeople = YES;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setting the number of sections in the contentview

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
//    NSArray *objArray = [self.images allKeys];
//    
//    return objArray.count;
    
    if (self.segmentIsPeople) {
        
        NSArray *objArray = self.people;
        return objArray.count;
    } else {
        
        NSArray *objArray = self.location;
        return objArray.count;
    }
}

#pragma mark - Setting the number of items in the section

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    NSArray *objArray = [self.images allValues];
//    NSArray *imagesArray = objArray[section];
//
//    return imagesArray.count;
    
    
    if (self.segmentIsPeople) {
        
        NSArray *objArray = self.people[section];
        return objArray.count;
    } else {
        
        NSArray *objArray = self.location[section];
        return objArray.count;
    }

}

#pragma mark - Setting the cell image

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    myCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCollectionViewCell" forIndexPath:indexPath];
    
// 
//    NSArray *objArray = [self.images allValues];
//    
//    NSArray *imagesArray = objArray[indexPath.section];
//    
//    instaPhoto *imageToShow = [imagesArray objectAtIndex:indexPath.row];
    

    instaPhoto *imageToShow = [instaPhoto new];
    
    if (self.segmentIsPeople) {
        
        NSArray *objArray = self.people[indexPath.section];
        imageToShow = [objArray objectAtIndex:indexPath.row];
        
    } else {
        
        NSArray *objArray = self.location[indexPath.section];
        imageToShow = [objArray objectAtIndex:indexPath.row];
    }
    
    
    cell.image.image = imageToShow.image;
    return cell;
}

#pragma mark - Setting the subjects

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"headerView" forIndexPath:indexPath];
        
        
      //NSArray<NSString *> *subjects = [self.images allKeys];
    
        
    
        NSString *subject = [NSString new];
        
        
        
        if (self.segmentIsPeople) {
            
            
            switch (indexPath.section) {
                case 0:
                    subject = @"Rick";
                    break;
                case 1:
                    subject = @"Morty";
                    break;
                case 2:
                    subject = @"Meeseeks";
                    break;
                case 3:
                    subject = @"Testing";
                    break;
                    
                default:
                    break;
            }
            
        } else {
            
            switch (indexPath.section) {
                case 0:
                    subject = @"Earth";
                    break;
                case 1:
                    subject = @"Space";
                    break;
              
                    
                default:
                break;
            }
        }
        
        headerView.sectionHeaderLabel.text = [NSString stringWithFormat:@"%@", subject];
      
        return headerView;
    }
    return nil;
}

#pragma mark - Setting the segment button

- (IBAction)segmentView:(UISegmentedControl *)sender {
    
   if ( sender.selectedSegmentIndex == 0)
   {
       self.segmentIsPeople = YES;
       [self.theRealCollectionView reloadData];
       NSLog(@"People Segment");
   }
    if ( sender.selectedSegmentIndex == 1){
        self.segmentIsPeople = NO;
        [self.theRealCollectionView reloadData];
        NSLog(@"location Segment");

    }
}

@end
