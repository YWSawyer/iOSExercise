//
//  YWListRequestManager.m
//  iOSExercise
//
//  Created by wei.yuan on 27/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import "YWListRequestManager.h"
#import "YWCleenApi.h"
#import "YWListModel.h"

@implementation YWListRequestManager

+ (void)fechListDataWithCompletion:(YWNetworkCompletionHandler)completion {
    YWCleenApi *api = [[YWCleenApi alloc]initWithPara:nil Subpath:kListViewDataSubPath andMethod:YTKRequestMethodGET];
    [api fetchDataWithoutErrorTipCompletion:^(NSError *error, id result) {
        YWListModel *model = [YWListModel mj_objectWithKeyValues:result];
        !completion?:completion(error, model);
    }];
}

@end
