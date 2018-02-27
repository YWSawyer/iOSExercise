//
//  YWListRequestManager.h
//  iOSExercise
//
//  Created by wei.yuan on 27/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWListRequestManager : NSObject


/**
 fech list datas from server

 @param completion the feed result from server
 */
+ (void)fechListDataWithCompletion:(YWNetworkCompletionHandler)completion;

@end
