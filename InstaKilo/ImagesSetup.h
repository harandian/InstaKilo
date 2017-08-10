//
//  ImagesSetup.h
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "instaPhoto.h"

@interface ImagesSetup : NSObject

@property (strong, nonatomic) NSArray<UIImage *> *images;
@property UIImage *instaPhotos;
@property NSSet *catagory;
@property (strong, nonatomic) NSArray *instaPhotosArray;
@property (strong, nonatomic) NSMutableDictionary *instaPhotoDictionary;

//- (NSArray <UIImage*>*) setupImages;
- (NSMutableDictionary *) catagorize;

@end
