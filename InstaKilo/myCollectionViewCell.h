//
//  myCollectionViewCell.h
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "instaPhoto.h"

@interface myCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property UILabel *label;
-(void) configureCellWithPhoto: (instaPhoto *) instaPhoto;

@end
