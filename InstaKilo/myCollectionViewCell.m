//
//  myCollectionViewCell.m
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "myCollectionViewCell.h"

@implementation myCollectionViewCell


-(void) configureCellWithPhoto: (instaPhoto *) instaPhoto {
    
    self.image.image = instaPhoto.image;
}

@end
