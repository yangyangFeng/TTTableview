//
//  TTBaseTableViewCell.h
//  TableDatasourceSeparation
//
//  Created by 邴天宇 on 15/12/15.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTBaseTableViewCell : UITableViewCell
+ (void)registerTable:(UITableView *)tableView
        nibIdentifier:(NSString *)identifier ;
/**
 *  子类重写,为cell添加数据
 *
 *  @param cell      自定义cell
 *  @param obj       数据 Model
 *  @param indexPath
 */
- (void)configure:(UITableViewCell *)cell
        customObj:(id)obj
        indexPath:(NSIndexPath *)indexPath ;

/**
 *  根据数据 Model计算 (或者已经算好高度) 直接为cell 设置新的高度
 *
 *  @param obj       数据 Model
 *  @param indexPath
 *
 *  @return cell 高度
 */
+ (CGFloat)getCellHeightWithCustomObj:(id)obj
                            indexPath:(NSIndexPath *)indexPath ;
@end
