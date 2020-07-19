//
//  SecurityUtil.h
//  GSPCOMPONENT
//
//  Created by llbt on 2020/6/6.
//  Copyright © 2020 ccbfintech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SecurityUtil : NSObject
+(NSString*)encryptAESData:(NSString*)string;
+(NSString*)decryptAESData:(NSString *)string;
@end
