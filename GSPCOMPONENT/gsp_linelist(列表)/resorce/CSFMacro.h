//ProjectName(工程名): TJGA
/*************************************************
 File name（文件名）:  CSFMacro.h
 Description（描述）: Color + Size + Font 宏定义
 
 Others:-
 Function List:-
 
 History（ 修改日志）:
 1.
 Date（修改日期）:
 Author（修改者）:
 Modification（修改内容）:
 *************************************************/

#ifndef CSFMacro_h
#define CSFMacro_h


//------------------------------------------------------------------------
#pragma mark >>>>>>>>>>>>>>>>>>>>>>>>>>>> 颜色 <<<<<<<<<<<<<<<<<<<<<<<<<<<<
//------------------------------------------------------------------------

//rgb 传入rgb色值
#define kColor_RGB(a,b,c,d) [UIColor colorWithRed:a/255.0 green:b/255.0 blue:c/255.0 alpha:d]
//RGB
#define kUIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#pragma mark -系统颜色
//透明（系统色）
#define kColor_ClearColor [UIColor clearColor]
//白色（系统色）
#define kColor_WhiteColor [UIColor whiteColor]
//黑色（系统色）
#define kColor_BlackColor [UIColor blackColor]
//红色（系统色）
#define kColor_RedColor [UIColor redColor]

#pragma mark -APP基色
//重要
#define kColor_Color1 [UIColor colorWithHexString:@"005AEE"]
#define kColor_Color2 [UIColor colorWithHexString:@"EF6D4C"]
#define kColor_Color3 [UIColor colorWithHexString:@"3E3E3E"]
//次要
#define kColor_Color4 [UIColor colorWithHexString:@"888888"]
#define kColor_Color5 [UIColor colorWithHexString:@"D8D8D8"]
#define kColor_Color6 [UIColor colorWithHexString:@"5BCFBF"]
//较弱
#define kColor_Color7 [UIColor colorWithHexString:@"F6F5F8"]
#define kColor_Color8 [UIColor colorWithHexString:@"EDEDED"]
#define kColor_Color9 [UIColor colorWithHexString:@"FFFFFF"]

#pragma mark -背景色
//主题色   重要  005AEE
#define kColor_ThemeColor [UIColor colorWithHexString:@"005AEE"]
//背景色   较弱  F6F5F8
#define kColor_BackGroundColor [UIColor colorWithHexString:@"F6F5F8"]
//橘黄     重要  EF6D4C （重要按钮或者提示）
#define kColor_OrangeColor [UIColor colorWithHexString:@"EF6D4C"]

//暗红色  注销按钮颜色
#define kColor_darkRedColor kColor_RGB(179,63,82,1)


#pragma mark -文字颜色
//文字颜色-正黑色
#define kTextColor_Black [UIColor blackColor]
//文字颜色-正红色
#define kTextColor_Red [UIColor redColor]
//文字颜色-正白色
#define kTextColor_WhiteColor [UIColor whiteColor]
//文字颜色-浅黑 #404E7C
#define kTextColor_lightBlack kColor_RGB(64,78,124,1)
//文字颜色-深灰 #8A9DBE
#define kTextColor_darkGrey kColor_RGB(138,157,190,1)
//文字颜色-浅灰 #F2F4F7
#define kTextColor_lightGrey kColor_RGB(242,244,247,1)
//文字颜色-灰白 #F6F8FC
#define kTextColor_offWhite kColor_RGB(246,248,252,1)
//文字颜色-灰白浅 #D8D8D8
#define kTextColor_GreyWhite [UIColor colorWithHexString:@"D8D8D8"]
//文字颜色-黑 #3E3E3E
#define kTextColor_black [UIColor colorWithHexString:@"3E3E3E"]

#define kColor_darkBlue [UIColor colorWithHexString:@"0050D4"]
//辅色-浅黑
#define kColor_203152 [UIColor colorWithHexString:@"203152"]
//辅色-深灰
#define kColor_7E8DA6 [UIColor colorWithHexString:@"7E8DA6"]
//辅色-浅灰
#define kColor_C5CAD4 [UIColor colorWithHexString:@"C5CAD4"]
//辅色-绿
#define kColor_08C173 [UIColor colorWithHexString:@"08C173"]
//辅色-灰白
#define kColor_F1F3F6 [UIColor colorWithHexString:@"F1F3F6"]
//辅色-红
#define kColor_F85A53 kColor_RGB(243,65,66,1)


//蓝色点点
#define kColor_009AFF [UIColor colorWithHexString:@"009AFF"]
//深蓝点点 #005AEE
#define kColor_005AEE [UIColor colorWithHexString:@"005AEE"]
//分割线颜色
#define kColor_LineColor [UIColor colorWithHexString:@"F6F6F6"]
//红色字  F85A53
#define kColor_RedTextColor [UIColor colorWithHexString:@"F2F4F7"]
//粗体字色
#define kColor_BlackTextColor [UIColor colorWithHexString:@"333333"]
//细体字色
#define kColor_GrayTextColor [UIColor colorWithHexString:@"656565 "]
//常规字  203152
#define kColor_NormalTextColor kColor_RGB(25,36,65,1)
//提示语字 919191
#define kColor_TipTextColor kColor_RGB(184,190,203,1)
//提示语字
#define kColor_TipTextColor2 kColor_RGB(156,156,156,1)



//常规字2
#define kColor_NormalTextColor2 kColor_RGB(118,118,118,1)
//TIP文字颜色
#define kColor_LightGrayColor kColor_RGB(184,190,203,1)
//我的发布文字颜色
#define kColor_MediumGrayColor kColor_RGB(143,143,143,1)
//我的发布文字颜色(浅)
#define kColor_VeryLightGrayColor kColor_RGB(224,224,224,1)
//发黑的灰色
#define kColor_GrayBlackColor kColor_RGB(40,40,40,1)

//Toast框背景色
#define kColor_ToastBlackGroundColor kColor_RGB(218,218,218,1)


#pragma mark ---------分割线颜色---------
//分割线-黑灰色
#define kLineColor_GrayBlackColor kColor_RGB(40,40,40,1)
//分割线-灰色
#define kLineColor_GrayColor kColor_RGB(242,244,247,1)










//----------------------------------------------------------------------
#pragma mark >>>>>>>>>>>>>>>>>>>>>>>>>>>> 尺寸 <<<<<<<<<<<<<<<<<<<<<<<<<<<<
//----------------------------------------------------------------------

//大屏放大的系数 （以4.7寸作为标准 375 * 667）
#define kSize_WidthCoefficient ([UIScreen mainScreen].bounds.size.width / 375.0)
#define kSize_HeightCoefficient (kSize_ScreenHeight >= 812.0 ? 667.0/667.0 : kSize_ScreenHeight/667.0)

#define kSize_ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kSize_ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kSize_Bounds [UIScreen mainScreen].bounds
#define kSize_ContentViewHeight (kSize_ScreenHeight - kSize_StatusBarHeight - kSize_NavigationBarHeight)

#define kSize_StatusBarHeight (kSize_ScreenHeight >= 812.0 ? 44 : 20)
#define kSize_NavigationBarHeight 44 //不包含状态栏
#define kSize_TabBarHeight (kSize_ScreenHeight >= 812.0 ? 83 : 49)
#define kSize_TabbarSafeBottomMargin (kSize_ScreenHeight >= 812.0 ? 34.f : 0.f)
#define kHeight_NavBar ((KIsiPhoneX==YES || KIS_IPHONE_Xr ==YES || KIS_IPHONE_Xs== YES || KIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)

//是否是iPhoneX
#define KIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
//判断iPHoneXr
#define KIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) : NO)
//判断iPhoneXs
#define KIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
//判断iPhoneXs Max
#define KIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) : NO)












//----------------------------------------------------------------------
#pragma mark >>>>>>>>>>>>>>>>>>>>>>>>>>>> 字体 <<<<<<<<<<<<<<<<<<<<<<<<<<<<
//----------------------------------------------------------------------
#define kFont_RegularFont(f) [UIFont fontWithName:@"PingFangSC-Regular" size:(f)*kSize_WidthCoefficient]
#define kFont_MediumFont(f) [UIFont fontWithName:@"PingFangSC-Medium" size:(f)*kSize_WidthCoefficient]
#define kFont_SemiboldFont(f) [UIFont fontWithName:@"PingFangSC-Semibold" size:(f)*kSize_WidthCoefficient]
#define kFont_LightFont(f) [UIFont fontWithName:@"PingFangSC-Light" size:(f)*kSize_WidthCoefficient]


//普通字体    苹方 标准体 17*系数
#define kFont_NormalTextFont [UIFont fontWithName:@"PingFangSC-Regular" size:17*kSize_WidthCoefficient]
//中等字体    苹方 标准体 15*系数
#define kFont_MediumTextFont [UIFont fontWithName:@"PingFangSC-Regular" size:15*kSize_WidthCoefficient]
//小号字体    苹方 标准体 13*系数
#define kFont_SmallTextFont [UIFont fontWithName:@"PingFangSC-Regular" size:13*kSize_WidthCoefficient]
//大标题      苹方 标准体 19*系数
#define kFont_BigTitleFont [UIFont fontWithName:@"PingFangSC-Regular" size:19*kSize_WidthCoefficient]
//小标题      苹方 标准体 13*系数
#define kFont_SmallTitleFont [UIFont fontWithName:@"PingFangSC-Regular" size:13*kSize_WidthCoefficient]
//正文按钮字体 苹方 中黑体 13*系数
#define kFont_ButtonTitleFont [UIFont fontWithName:@"PingFangSC-Medium" size:17*kSize_WidthCoefficient]
//底部按钮字体 苹方 粗黑体 22*系数
#define kFont_BottomButtonTitleFont [UIFont fontWithName:@"PingFangSC-Semibold" size:22*kSize_WidthCoefficient]

#endif /* CSFMacro_h */
