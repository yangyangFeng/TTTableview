//
//  TTBaseTableViewCell.m
//  TableDatasourceSeparation
//
//  Created by 邴天宇 on 15/12/15.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "TTBaseTableViewCell.h"

@implementation TTBaseTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}
#pragma mark --
+ (UINib *)nibWithIdentifier:(NSString *)identifier
{
    return [UINib nibWithNibName:identifier bundle:nil];
}

+ (void)registerTable:(UITableView *)tableView nibIdentifier:(NSString *)identifier
{
    TTBaseTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[TTBaseTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:identifier];
    }
      [tableView registerNib:[self nibWithIdentifier:identifier] forCellReuseIdentifier:identifier] ;
//    return cell;
}
#pragma mark - Rewrite these func in SubClass !
- (void)configure:(UITableViewCell *)cell
        customObj:(id)obj
        indexPath:(NSIndexPath *)indexPath
{
    // Rewrite this func in SubClass !
    
}

+ (CGFloat)getCellHeightWithCustomObj:(id)obj
                            indexPath:(NSIndexPath *)indexPath
{
    // Rewrite this func in SubClass if necessary
    if (!obj) {
        return 0.0f ; // if obj is null .
    }
    return 44.0f ; // default cell height
}

//+ (void)registerTable:(UITableView *)table
//        nibIdentifier:(NSString *)identifier ;
//
//- (void)configure:(UITableViewCell *)cell
//        customObj:(id)obj
//        indexPath:(NSIndexPath *)indexPath ;
//
//+ (CGFloat)getCellHeightWithCustomObj:(id)obj
//                            indexPath:(NSIndexPath *)indexPath ;

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
