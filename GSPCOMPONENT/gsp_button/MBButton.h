//
//  MBButton.h
//  GSPCOMPONENT
//
//  Created by zhangxiaosen on 2019/12/5.
//  Copyright © 2019 ccbfintech. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, MBButtonControlEvent) {
    MBButtonControlEventNormal,
    MBButtonControlEventPress,
    MBButtonControlEventDisable
};

typedef NS_ENUM(NSInteger, MBButtonType) {
    MBButtonTypeCommonlyUsed,
    MBButtonTypeNotCommonlyUsed
};

@interface MBButton : UIView


@end

NS_ASSUME_NONNULL_END
