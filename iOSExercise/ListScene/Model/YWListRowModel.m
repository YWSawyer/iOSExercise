//
//  YWListRowModel.m
//  iOSExercise
//
//  Created by wei.yuan on 27/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import "YWListRowModel.h"

@implementation YWListRowModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    
    return @{
             @"digest":@"description"
             };
}

- (NSString *)title {
    if (_title == nil) {
        return @"no data";
    }
    return _title;
}

- (NSString *)digest {
    if (_digest == nil) {
        return @"no data";
    }
    return _digest;
}
@end
