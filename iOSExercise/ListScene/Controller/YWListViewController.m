//
//  YWListViewController.m
//  iOSExercise
//
//  Created by wei.yuan on 27/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import "YWListViewController.h"
#import "YWListRequestManager.h"
#import "YWListModel.h"
#import "YWListRowModel.h"
#import "YWListViewCell.h"

#define YWListViewCellIdentifier             @"YWListViewCellIdentifier"


@interface YWListViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (copy, nonatomic) NSArray *listDatas;

@end

@implementation YWListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self initConfig];
    [self.tableview.mj_header beginRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initConfig {
    
    [self.tableview registerNib:[UINib nibWithNibName:@"YWListViewCell" bundle:nil] forCellReuseIdentifier:YWListViewCellIdentifier];
    self.tableview.tableFooterView = [UIView new];
    self.tableview.estimatedRowHeight = 80;
    
    self.tableview.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [YWListRequestManager fechListDataWithCompletion:^(NSError *error, id result) {
            [self.tableview.mj_header endRefreshing];
            if (!error) {
                YWListModel *model = (YWListModel *)result;
                self.title = model.title;
                self.listDatas = [model.rows hyb_filterNullNil];
                [self.tableview reloadData];
            }else{
                [self.view showToastWithText:error.description];
            }
        }];
    }];
}

#pragma -mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YWListViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:YWListViewCellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    YWListRowModel *model = self.listDatas[indexPath.row];
    cell.title = model.title;
    cell.digest = model.digest;
    cell.imageHref = model.imageHref;
    
    return cell;
}


#pragma -mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
