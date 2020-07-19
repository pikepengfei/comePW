//
//  NSData+AES128.h
//  GSPCOMPONENT
//
//  Created by llbt on 2020/6/6.
//  Copyright © 2020 ccbfintech. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSData (AES128)
- (NSData *)AES128EncryptWithKey:(NSString *)key gIv:(NSString *)Iv;   //加密
- (NSData *)AES128DecryptWithKey:(NSString *)key gIv:(NSString *)Iv;   //解密
@end
