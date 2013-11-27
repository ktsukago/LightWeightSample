//
//  LWStoredPhotos.m
//  LightWeight
//
//  Created by 塚越 啓介 on 2013/11/26.
//  Copyright (c) 2013年 ktsukago. All rights reserved.
//

#import "LWStoredPhotos.h"

@implementation LWStoredPhotos

+ (NSArray *)photosArray
{
    NSMutableArray *photos = [@[] mutableCopy];
    for (int i = 0; i < 10; i++) {
        NSMutableDictionary *pictureInfo = [@{} mutableCopy];
        
        NSString *imageName =  [NSString stringWithFormat:@"kyoto_%d.jpg", i];
        UIImage *picture = [UIImage imageNamed:imageName];
        pictureInfo[@"image"] = picture;
        pictureInfo[@"name"] = [NSString stringWithFormat:@"photo %d",i];
        [photos addObject:pictureInfo];
    }
    return  photos;
}

@end
