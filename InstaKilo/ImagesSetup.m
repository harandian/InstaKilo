//
//  ImagesSetup.m
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "ImagesSetup.h"

@implementation ImagesSetup



//- (NSArray <UIImage*>*) setupImages {
//
//    self.images=@[[UIImage imageNamed:@"Rick1"],
//                  [UIImage imageNamed:@"Rick2"],
//                  [UIImage imageNamed:@"Rick3"],
//                  [UIImage imageNamed:@"Rick4"],
//                  [UIImage imageNamed:@"Rick5"],
//                  [UIImage imageNamed:@"Rick6"],
//                  [UIImage imageNamed:@"Rick7"],
//                  [UIImage imageNamed:@"Rick8"],
//                  [UIImage imageNamed:@"Rick9"],
//                  [UIImage imageNamed:@"Rick10"]];
//
//
//    return self.images;
//}

#pragma mark - Initializing new instaPhotos

- (NSMutableDictionary *) catagorize {
    
    instaPhoto *image1 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"Rick1"] andLocation:@"Earth"];
    
    instaPhoto *image2 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick2"] andLocation:@"Earth"];
    
    instaPhoto *image3 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"Rick3"] andLocation:@"Space"];
    
    instaPhoto *image4 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick4"] andLocation:@"Earth"];
    
    instaPhoto *image5 = [[instaPhoto alloc] initWithCatagory:@"Niether" andImage:[UIImage imageNamed:@"Rick5"] andLocation:@"Earth"];
    
    instaPhoto *image6 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"Rick6"] andLocation:@"Space"];
    
    instaPhoto *image7 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick7"] andLocation:@"Earth"];
    
    instaPhoto *image8 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick8"] andLocation:@"Earth"];
    
    instaPhoto *image9 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick9"] andLocation:@"Space"];
    
    instaPhoto *image10 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick10"] andLocation:@"Space"];
    
    instaPhoto *image11 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"morty3"] andLocation:@"Space"];
    
    instaPhoto *image12 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"morty1"] andLocation:@"Space"];
    
    instaPhoto *image13 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"morty2"] andLocation:@"Space"];
    
#pragma mark - Sorting out the photos
    
    self.instaPhotosArray=@[
                            image1,
                            image2,
                            image3,
                            image4,
                            image5,
                            image6,
                            image7,
                            image8,
                            image9,
                            image10,
                            image11,
                            image12,
                            image13];
    
    NSMutableArray *rickArray = [NSMutableArray new];
    NSMutableArray *mortyArray = [NSMutableArray new];
    NSMutableArray *nietherArray = [NSMutableArray new];
    NSMutableArray *earthArray = [NSMutableArray new];
    NSMutableArray *spaceArray = [NSMutableArray new];
    
    
    
    for (instaPhoto *image in self.instaPhotosArray) {
        
        if ([image.catagory isEqualToString:@"Rick"])
        {
            [rickArray addObject:image];
        }
        
        else if ([image.catagory isEqualToString:@"Morty"])
        {
            [mortyArray addObject:image];
        }
        
        else if ([image.catagory isEqualToString:@"Niether"])
            
        {
            [nietherArray addObject:image];
        }
    }
    
    for (instaPhoto *image in self.instaPhotosArray) {
        
        if ([image.location isEqualToString:@"Space"])
            
        {
            [spaceArray addObject:image];
            
        }
        
        else if ([image.location isEqualToString:@"Earth"])
            
        {
            [earthArray addObject:image];
            
        }
    }
    NSLog(@"Rick Array %li",(long)rickArray.count);
    NSLog(@"Morty Array %li",(long)mortyArray.count);
    NSLog(@"Niether Array %li",(long)nietherArray.count);
    NSLog(@"Niether Array %li",(long)earthArray.count);
    NSLog(@"Niether Array %li",(long)spaceArray.count);

    self.instaPhotoDictionary = [NSMutableDictionary dictionary];
    
    [self.instaPhotoDictionary setObject:rickArray forKey:@"Rick Photos"];
    [self.instaPhotoDictionary setObject:mortyArray forKey:@"Morty Photos"];
    [self.instaPhotoDictionary setObject:nietherArray forKey:@"Photos"];
    [self.instaPhotoDictionary setObject:spaceArray forKey:@"Space Photos"];
    [self.instaPhotoDictionary setObject:earthArray forKey:@"Earth Photos"];

    NSLog(@"%li",(long)self.instaPhotoDictionary.count);
    
    return self.instaPhotoDictionary;
}

-(void) configureCellWithPhoto: (instaPhoto *) instaPhoto {
    
}



@end
