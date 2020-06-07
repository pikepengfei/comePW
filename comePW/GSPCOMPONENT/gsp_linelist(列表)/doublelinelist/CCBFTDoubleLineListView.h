//
//  CCBFTDoubleLineListView.h
//  GSPCOMPONENT
//
//  Created by llbt on 2019/12/8.
//  Copyright © 2019 ccbfintech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSFMacro.h"
#import "Masonry.h"

NS_ASSUME_NONNULL_BEGIN

/**  DoubleListType 多行列表样式
 *  列表样式0:正常双行
 *  列表样式1:前后文字样式
 *  列表样式2：前后图片样式
 *  列表样式2：中间带横线的双行
*/
typedef NS_ENUM(NSInteger,DoubleListType) {
    DoubleListType_Normal = 0,
    DoubleListType_Aroundtit = 1,
    DoubleListType_AroundImg = 2,
    DoubleListType_LineCenter = 3,
};


@interface CCBFTDoubleLineListView : UIView
/**重点
 *尾部标题样式
*/
@property (nonatomic,assign) DoubleListType doubleListType;

/**
 *顶头文字标题
 */
@property (strong,nonatomic)UILabel *titularTitleLabel;

/**
 *顶头图片
 */
@property (strong,nonatomic)UIImageView *titularImg;

/**
 *上行文字
*/
@property (strong,nonatomic)UILabel *titouTitleLabel;//上行主要文字

//电话文字
@property (strong,nonatomic)UILabel *PhtonLabel;
@property (assign, nonatomic) BOOL PhtonEntry;//是否存在


/**
 *下行文字
*/
@property (strong,nonatomic)UILabel *explainLabel;//辅助性说明文字

//时间文字
@property (strong,nonatomic)UILabel *dateTimeLabel;
@property (assign, nonatomic) BOOL dateEntry;//是否存在


/**
 *尾部按钮
 */
@property (strong, nonatomic)UIButton *ChanImgBtn;
@property (assign, nonatomic) BOOL ChanEntry;//是否存在

/**
 *尾图标
*/
@property(strong,nonatomic)UIImageView *ConImg;
@property (assign, nonatomic) BOOL ConEntry;//是否存在

/**
 *距离变量文字
 */
@property (strong,nonatomic)UILabel *KMLabel;


@end

NS_ASSUME_NONNULL_END
