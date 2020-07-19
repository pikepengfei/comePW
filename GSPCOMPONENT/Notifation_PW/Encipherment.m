//
//  Encipherment.m
//  GSPCOMPONENT
//
//  Created by llbt on 2020/6/6.
//  Copyright © 2020 ccbfintech. All rights reserved.
//

#import "Encipherment.h"

@implementation Encipherment

+ (BOOL) encipherment:(id)original forKEY:(NSString*)key
{
    //
    
    //存储
    NSUserDefaults *defaults =  [NSUserDefaults standardUserDefaults];
    [defaults setObject:original forKey:key];
       
    BOOL deposit = [defaults synchronize];
    return deposit;
}
+ (id) putoutMentforKey:(NSString*)key
{
    //从本地存储中取出
    NSUserDefaults *defaul =  [NSUserDefaults standardUserDefaults];
    
    id tempObject = [defaul objectForKey:key];
    //使用之前进行解密
    
    
    //
    NSLog(@">>%@",tempObject);
    return tempObject
}


@end
