//
//  LWViewController.m
//  LightWeight
//
//  Created by 塚越 啓介 on 2013/11/26.
//  Copyright (c) 2013年 ktsukago. All rights reserved.
//

#import "LWViewController.h"
#import "LWStoredPhotos.h"
#import "LWDataSource.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface LWViewController ()

@property (nonatomic, strong) LWDataSource *photosArrayDataSource;

@end

@implementation LWViewController



#pragma mark - LifeCycle



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Photos";
    [self setupTableView];
}

- (void)setupTableView
{
    TableViewCellConfigureBlock configureCell = ^(UITableViewCell *cell, NSDictionary *item){
        cell.textLabel.text = item[@"name"];
        cell.imageView.image = item[@"image"];
    };
    
    self.photosArrayDataSource = [[LWDataSource alloc] initWithItems:[LWStoredPhotos photosArray]
                                                         cellIdentifier:PhotoCellIdentifier
                                                     configureCellBlock:configureCell];
    self.tableView.dataSource = self.photosArrayDataSource;
}



#pragma mark - TableViewDelegate



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"toCollectionView" sender:self];
}

@end
