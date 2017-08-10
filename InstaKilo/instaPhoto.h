//
//  instaPhoto.h
//  InstaKilo
//
//  Created by Hirad on 2017-08-09.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface instaPhoto : NSObject

//@property NSString *name;
@property UIImage *image;
@property NSString *location;
@property NSString *catagory;

- (instancetype)initWithCatagory: (NSString*) catagory andImage:(UIImage*)image;


@end
