//
//  instaPhoto.m
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "instaPhoto.h"

@implementation instaPhoto

- (instancetype)initWithCatagory:(NSString *)catagory andImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        _catagory = catagory;
        _image = image;
    }
    return self;
}
@end
