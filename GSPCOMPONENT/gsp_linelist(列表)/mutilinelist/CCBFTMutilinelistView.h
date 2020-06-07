//
//  CCBFTMutilinelistView.h
//  GSPCOMPONENT
//
//  Created by 鹏 on 2019/12/9.
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
typedef NS_ENUM(NSInteger,MutilinelistType) {
    MutilinelistType_Normal = 0,
    MutilinelistType_Norline = 1,
    MutilinelistType_Character = 2,
    MutilinelistType_forImg = 3,
    MutilinelistType_textField = 4,
};


@interface CCBFTMutilinelistView : UIView <UITextViewDelegate>

/**重点
 *主要样式
*/
@property (nonatomic,assign) MutilinelistType mutilinelistType;
/**
 *标题文字
 */
@property (strong,nonatomic)UILabel *titularTitleLabel;

/**
*第二行信息题头
*/
@property (strong,nonatomic)UILabel *locaLabel;
/**
*第二行信息值
*/
@property (strong,nonatomic)UILabel *mationTitleLabel;
/**
*第三行信息题头
*/
@property (strong,nonatomic)UILabel *holdingLabel;
/**
*第二行信息值
*/
@property (strong,nonatomic)UILabel *mationhodLabel;
//蓝色方块是否存在
@property (assign, nonatomic) BOOL blueSqueEn;

@property (strong, nonatomic)UIButton *ChanImgBtn;

@property (nonatomic,strong)UITextView *massionTextField;


@end

NS_ASSUME_NONNULL_END
