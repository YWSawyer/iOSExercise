//
//  YWBaseApi.h
//  iOSExercise
//
//  Created by dahuoshi on 27/02/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import "YWBaseApi.h"

@interface YWBaseApi ()

@property (copy, nonatomic) NSDictionary *postPara;
@property (copy, nonatomic) NSString *subpath;
@property (assign, nonatomic) YTKRequestMethod httpMethod;
@property (copy, nonatomic) NSString *downloadPath;

@end

@implementation YWBaseApi

- (instancetype)initWithSubpath:(NSString *)subpath {
    self = [self initWithPara:nil andSubpath:subpath];
    if (self) {
        return self;
    }
    return nil;
}


- (instancetype)initWithPara:(NSDictionary *)para andSubpath:(NSString *)subpath{
    self = [self initWithPara:para Subpath:subpath andMethod:YTKRequestMethodPOST];
    if (self) {
        _postPara = [para copy];
        _subpath  = subpath;
        return self;
    }
    return nil;
}


- (instancetype)initWithPara:(NSDictionary *)para Subpath:(NSString *)subpath andMethod:(YTKRequestMethod)method {
    self = [super init];
    if (self) {
        _postPara = [para copy];
        _subpath  = subpath;
        _httpMethod = method;
        return self;
    }
    return nil;
}


- (id)requestArgument {
    
    return _postPara;
}

- (NSString *)requestUrl {
    return _subpath;
}

- (YTKRequestMethod)requestMethod {
    return _httpMethod;
}


- (YTKResponseSerializerType)responseSerializerType {
    return YTKResponseSerializerTypeJSON;
}

- (void)fetchDataWithoutErrorTipCompletion:(YWNetworkCompletionHandler)block {
    [self requestDataWithCompletion:^(NSError *error, id result) {
        block(error,result);
    }];
}


- (NSString *)filterHttpError:(NSError *)error {
    return error.localizedDescription;
}


- (void)requestDataWithCompletion:(YWNetworkCompletionHandler)completion {
}

@end
