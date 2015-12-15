//
//  TTTableViewDataDelegate.m
//  TableDatasourceSeparation
//
//  Created by 邴天宇 on 15/12/15.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "TTTableViewDataDelegate.h"
#import "TTBaseTableViewCell.h"
@interface TTTableViewDataDelegate ()
@property (nonatomic, strong) NSArray *items ;
@property (nonatomic, copy) NSString *cellIdentifier ;
@property (nonatomic, copy) TT_TableViewCellConfigureBlock configureCellBlock ;
@property (nonatomic, copy) TT_CellHeightBlock             heightConfigureBlock ;
@property (nonatomic, copy) TT_DidSelectCellBlock          didSelectCellBlock ;
@end

@implementation TTTableViewDataDelegate
- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TT_TableViewCellConfigureBlock)aConfigureCellBlock
    cellHeightBlock:(TT_CellHeightBlock)aHeightBlock
     didSelectBlock:(TT_DidSelectCellBlock)didselectBlock
{
    self = [super init] ;
    if (self) {
        self.items = anItems ;
        self.cellIdentifier = aCellIdentifier ;
        self.configureCellBlock = aConfigureCellBlock ;
        self.heightConfigureBlock = aHeightBlock ;
        self.didSelectCellBlock = didselectBlock ;
    }
    
    return self ;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.items[(int)indexPath.row] ;
}

- (void)handleTableViewDatasourceAndDelegate:(UITableView *)table
{
    table.dataSource = self ;
    table.delegate   = self ;
}

#pragma mark --
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemAtIndexPath:indexPath] ;
    TTBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier] ;
    if (!cell) {
        [TTBaseTableViewCell registerTable:tableView nibIdentifier:self.cellIdentifier] ;
        cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    }
    self.configureCellBlock(indexPath,item,cell) ;
    return cell ;
}

#pragma mark --
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemAtIndexPath:indexPath] ;
    return self.heightConfigureBlock(indexPath,item) ;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemAtIndexPath:indexPath] ;
    self.didSelectCellBlock(indexPath,item) ;
}

@end
