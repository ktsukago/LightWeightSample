//
//  LWDataSource.h
//  LightWeight
//
//  Created by 塚越 啓介 on 2013/11/26.
//  Copyright (c) 2013年 ktsukago. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^TableViewCellConfigureBlock)(id cell, id item);


@interface LWDataSource : NSObject <UITableViewDataSource, UICollectionViewDataSource>


- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
