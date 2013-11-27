//
//  LWCollectionViewController.m
//  LightWeight
//
//  Created by 塚越 啓介 on 2013/11/27.
//  Copyright (c) 2013年 ktsukago. All rights reserved.
//

#import "LWCollectionViewController.h"
#import "LWDataSource.h"
#import "LWStoredPhotos.h"
#import "LWImageCollectionViewCell.h"

static NSString * const CollectionCellIdentifier = @"defaultCell";

@interface LWCollectionViewController ()

@property (nonatomic, strong) LWDataSource *photosArrayDataSource;

@end

@implementation LWCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCollectionView];
}

- (void)setupCollectionView
{

    TableViewCellConfigureBlock configureCell = ^(LWImageCollectionViewCell *cell, NSDictionary *item){
//        cell.vi
        cell.imageView.image = item[@"image"];
        cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
    };
    self.photosArrayDataSource = [[LWDataSource alloc] initWithItems:[LWStoredPhotos photosArray]
                                                      cellIdentifier:CollectionCellIdentifier
                                                  configureCellBlock:configureCell];
    self.collectionView.dataSource = self.photosArrayDataSource;
}


@end
