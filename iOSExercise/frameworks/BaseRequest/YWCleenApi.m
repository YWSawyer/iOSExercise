//
//  YWCleenApi.h.h
//  iOSExercise
//
//  Created by dahuoshi on 27/02/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import "YWCleenApi.h"

@implementation YWCleenApi


- (void)requestDataWithCompletion:(YWNetworkCompletionHandler)completion {
    
    [self startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        !completion ?: completion(request.error, request.responseJSONObject);
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        !completion ?: completion(request.error, nil);
    }];
}



- (NSString *)baseUrl {
    return API_HOST_APP;
}

@end
