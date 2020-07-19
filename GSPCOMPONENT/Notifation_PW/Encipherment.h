//
//  Encipherment.h
//  GSPCOMPONENT
//
//  Created by llbt on 2020/6/6.
//  Copyright © 2020 ccbfintech. All rights reserved.
//  加密方式

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Encipherment : NSObject
//存储
+ (BOOL) encipherment:(id)original forKEY:(NSString*)key;
//取出
+ (BOOL) putoutMentforKey:(NSString*)key;
@end

NS_ASSUME_NONNULL_END
