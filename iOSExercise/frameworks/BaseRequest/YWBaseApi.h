//
//  YWBaseApi.h
//  iOSExercise
//
//  Created by dahuoshi on 27/02/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface YWBaseApi : YTKRequest


- (instancetype)initWithSubpath:(NSString *)subpath;


- (instancetype)initWithPara:(NSDictionary *)para andSubpath:(NSString *)subpath;


- (instancetype)initWithPara:(NSDictionary *)para Subpath:(NSString *)subpath andMethod:(YTKRequestMethod)method;


- (void)fetchDataWithoutErrorTipCompletion:(YWNetworkCompletionHandler)block;


/**
 The method need to be implemented by subcalss

 @param completion the feed result from server
 */
- (void)requestDataWithCompletion:(YWNetworkCompletionHandler)completion;

@end
