//
//  YWListModel.m
//  iOSExercise
//
//  Created by wei.yuan on 27/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import "YWListModel.h"
#import "YWListRowModel.h"

@implementation YWListModel

+ (NSDictionary* )objectClassInArray {
    return @{
             @"rows":[YWListRowModel class]
             };
}


@end
