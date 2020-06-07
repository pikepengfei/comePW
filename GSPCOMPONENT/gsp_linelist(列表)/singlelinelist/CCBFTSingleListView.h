//
//  MBSingleList.h
//  GSPCOMPONENT
//
//  Created by llbt on 2019/12/5.
//  Copyright © 2019 ccbfintech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSFMacro.h"
#import "Masonry.h"

NS_ASSUME_NONNULL_BEGIN
/**  SingleListType 单行列表样式
 *  列表样式0:尖角号
 *  列表样式1:暗字
 *  列表样式2:明字
 *  列表样式3:暗字+尖角号
 *  列表样式4:明字+尖角号
*/
typedef NS_ENUM(NSInteger,SingleListType) {
    SingleListTypeImge = 0,
    SingleListTypeDark = 1,
    SingleListTypeBright = 2,
    SingleListTypeDarkImage = 3,
    SingleListTypeBrightImage = 4,
    SingleListTypeTimeData = 5,
    SingleListTypeVerificationCode = 6,
};


@interface CCBFTSingleListView : UIView
/**重点
 *标题样式
*/
@property (nonatomic,assign) SingleListType singleListType;
//样式set方法-可删除
-(void)setSingleListType:(SingleListType)singleListType;

/**
 *头标题
 */
@property(strong,nonatomic)UILabel *TipTitleLabel;
/**
 *小星星 * 重点标识
 */
@property(strong,nonatomic)UILabel *pointTitle;
@property (assign, nonatomic) BOOL PointEntry;
/**
 *尾标题
 */
@property(strong,nonatomic)UILabel *ConTitleLabel;
/**
 *尾图标
*/
@property(strong,nonatomic)UIImageView *ConImg;

/**
 *时间
 */
@property(strong,nonatomic)UILabel *timeDateLabel;

@property(nonatomic,copy) NSString *starTime;
@property(nonatomic,copy) NSString *endTime;

/**
 *输入框
 */
@property (nonatomic,strong)UITextField *codeTextField;


@end

NS_ASSUME_NONNULL_END
