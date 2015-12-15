//
//  TTEample.h
//  TableDatasourceSeparation
//
//  Created by 邴天宇 on 15/12/16.
//  Copyright © 2015年 teason. All rights reserved.
//

#ifndef TTEample_h
#define TTEample_h
/*   演示用法
 TT_TableViewCellConfigureBlock configureCell = ^(NSIndexPath *indexPath, MyObj *obj, TTBaseTableViewCell *cell) {
 [cell configure:cell customObj:obj indexPath:indexPath] ;
 } ;
 
 
 TT_CellHeightBlock heightBlock = ^CGFloat(NSIndexPath *indexPath, id item) {
 return [TTBaseTableViewCell getCellHeightWithCustomObj:item indexPath:indexPath] ;
 } ;
 
 TT_DidSelectCellBlock selectedBlock = ^(NSIndexPath *indexPath, id item) {
 NSLog(@"click row : %@",@(indexPath.row)) ;
 } ;
 
 self.tableDelegate = [[TTTableViewDataDelegate alloc] initWithItems:self.list
 cellIdentifier:MyCellIdentifier
 configureCellBlock:configureCell
 cellHeightBlock:heightBlock
 didSelectBlock:selectedBlock] ;
 
 [self.tableDelegate handleTableViewDatasourceAndDelegate:self.table] ;
 }
 */

#endif /* TTEample_h */
