//
//  TTTableViewDataDelegate.h
//  TableDatasourceSeparation
//
//  Created by 邴天宇 on 15/12/15.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class TTBaseTableViewCell;

typedef void    (^TT_TableViewCellConfigureBlock)(NSIndexPath *indexPath, id item, TTBaseTableViewCell *cell) ;
typedef CGFloat (^TT_CellHeightBlock)(NSIndexPath *indexPath, id item) ;
typedef void    (^TT_DidSelectCellBlock)(NSIndexPath *indexPath, id item) ;

@interface TTTableViewDataDelegate : NSObject <UITableViewDelegate,UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TT_TableViewCellConfigureBlock)aConfigureCellBlock
    cellHeightBlock:(TT_CellHeightBlock)aHeightBlock
     didSelectBlock:(TT_DidSelectCellBlock)didselectBlock ;

- (void)handleTableViewDatasourceAndDelegate:(UITableView *)table ;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath ;
@end
