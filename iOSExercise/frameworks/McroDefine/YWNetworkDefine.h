//
//  YWNetworkDefine.h
//  iOSExercise
//
//  Created by wei.yuan on 26/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#ifndef YWNetworkDefine_h
#define YWNetworkDefine_h


#define API_HOST_APP            @"http://thoughtworks-ios.herokuapp.com"


#define kListViewDataSubPath    @"facts.json"

typedef void(^YWNetworkCompletionHandler)(NSError *error, id result);


#endif /* YWNetworkDefine_h */
