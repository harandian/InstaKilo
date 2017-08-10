//
//  ImagesSetup.m
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "ImagesSetup.h"

@implementation ImagesSetup



- (NSArray <UIImage*>*) setupImages {
    
    self.images=@[[UIImage imageNamed:@"Rick1"],
                  [UIImage imageNamed:@"Rick2"],
                  [UIImage imageNamed:@"Rick3"],
                  [UIImage imageNamed:@"Rick4"],
                  [UIImage imageNamed:@"Rick5"],
                  [UIImage imageNamed:@"Rick6"],
                  [UIImage imageNamed:@"Rick7"],
                  [UIImage imageNamed:@"Rick8"],
                  [UIImage imageNamed:@"Rick9"],
                  [UIImage imageNamed:@"Rick10"]];
    
    
    return self.images;
}



//- (NSSet*) setCatagories {
//    
//    self.catagory = [NSSet setWithObjects:@"Rick",@"Morty",@"Both", nil];
//    
//    return self.catagory;
//}

- (NSMutableDictionary *) catagorize {
    
    instaPhoto *image1 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"Rick1"]];
    
    instaPhoto *image2 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick2"]];
    
    instaPhoto *image3 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"Rick3"]];
    
    instaPhoto *image4 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick4"]];
    
    instaPhoto *image5 = [[instaPhoto alloc] initWithCatagory:@"Niether" andImage:[UIImage imageNamed:@"Rick5"]];
    
    instaPhoto *image6 = [[instaPhoto alloc] initWithCatagory:@"Morty" andImage:[UIImage imageNamed:@"Rick6"]];
    
    instaPhoto *image7 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick7"]];
    
    instaPhoto *image8 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick8"]];
    
    instaPhoto *image9 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick9"]];
    
    instaPhoto *image10 = [[instaPhoto alloc] initWithCatagory:@"Rick" andImage:[UIImage imageNamed:@"Rick10"]];
    
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
                       image10];
    
    NSMutableArray *rickArray = [NSMutableArray new];
    NSMutableArray *mortyArray = [NSMutableArray new];
    NSMutableArray *nietherArray = [NSMutableArray new];



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
        
        NSLog(@"Rick Array %li",(long)rickArray.count);
        NSLog(@"Morty Array %li",(long)mortyArray.count);
        NSLog(@"Niether Array %li",(long)nietherArray.count);

    }
    
    
    self.instaPhotoDictionary = [NSMutableDictionary dictionary];
    
    [self.instaPhotoDictionary setObject:rickArray forKey:@"Rick Photos"];
    [self.instaPhotoDictionary setObject:mortyArray forKey:@"Morty Photos"];
    [self.instaPhotoDictionary setObject:nietherArray forKey:@"Photos"];
    
    NSLog(@"%li",(long)self.instaPhotoDictionary.count);

    return self.instaPhotoDictionary;
}

-(void) configureCellWithPhoto: (instaPhoto *) instaPhoto {
    
}



@end
