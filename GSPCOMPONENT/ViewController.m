//
//  ViewController.m
//  GSPCOMPONENT
//
//  Created by zhangxiaosen on 2019/12/4.
//  Copyright © 2019 ccbfintech. All rights reserved.
//

#import "ViewController.h"
#import "CCBFTSingleListView.h"
#import "CCBFTDoubleLineListView.h"
#import "CCBFTMutilinelistView.h"
#import "Encipherment.h"

@interface ViewController ()
@property(nonatomic,strong)UIImageView *logoImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:247/255.0 green:248/255.0 blue:251/255.0 alpha:1.0];

    
    [self.view addSubview:self.button];
    
    [self.view addSubview:self.button2];
}
-(UIButton *)button{
    UIButton *button = [UIButton buttonWithType:0];
    button.frame = CGRectMake(100, 50, self.view.frame.size.width-200, 50);
    button.tag = 2;
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 4;
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.font = kFont_RegularFont(17);
    [button setTitle:@"点击保存" forState:UIControlStateNormal];
    [button setTitleColor:kColor_WhiteColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(saveDic) forControlEvents:UIControlEventTouchUpInside];
    return button;
}
-(UIButton *)button2{
    UIButton *button = [UIButton buttonWithType:0];
    button.frame = CGRectMake(100, 120, self.view.frame.size.width-200, 50);
    button.tag = 1;
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 4;
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.font = kFont_RegularFont(17);
    [button setTitle:@"点击获取" forState:UIControlStateNormal];
    [button setTitleColor:kColor_WhiteColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(getDic) forControlEvents:UIControlEventTouchUpInside];
    return button;
}
-(void)saveDic{
    //创建存储数据
    NSDictionary *pic = @{@"app_device_id" : @"3022233",
                          @"cardnumber" : @"我中国心",
                          @"idcard" : @[@"301",@"550",@"102"],
                          @"idcard_expires_end" : @"我爱你",
                          @"idcard_expires_start" : @"不爱你",
                          @"is_auth" : @"你说",
                          @"mobile" : @"模型",};
    //本地存储之前进行加密
    [Encipherment encipherment:pic[@"cardnumber"]];
    
    
    //存储
    NSUserDefaults *defaults =  [NSUserDefaults standardUserDefaults];
    [defaults setObject:pic forKey:@"ROOTDic"];
    
    [defaults synchronize];
}

-(void)getDic{
    //从本地存储中取出
    NSUserDefaults *defaul =  [NSUserDefaults standardUserDefaults];
    
    id tempObject = [defaul objectForKey:@"ROOTDic"];
    //使用之前进行解密
    
    
    NSLog(@">>%@",tempObject);
    
}



- (void)mutUI{
    CCBFTMutilinelistView *view = [[CCBFTMutilinelistView alloc]initWithFrame:CGRectMake( 0, 50, 0, 0)];
    view.mutilinelistType = MutilinelistType_Normal;
    [self.view addSubview:view];

    CCBFTMutilinelistView *view2 = [[CCBFTMutilinelistView alloc]initWithFrame:CGRectMake( 0, 200, kSize_ScreenWidth, 51*3*kSize_HeightCoefficient)];
    view2.mutilinelistType = MutilinelistType_Norline;
    [self.view addSubview:view2];

    CCBFTMutilinelistView *view3 = [[CCBFTMutilinelistView alloc]initWithFrame:CGRectMake( 0, 370, kSize_ScreenWidth, 126*kSize_HeightCoefficient)];
    view3.mutilinelistType = MutilinelistType_Character;
    view3.titularTitleLabel.text = @"【广南县】广南县国土资源局罚没铝土矿卖出让项目国土资源局罚没铝土矿石拍卖出让项目。";
    [self.view addSubview:view3];

    CCBFTMutilinelistView *view4 = [[CCBFTMutilinelistView alloc]initWithFrame:CGRectMake( 0, 500, kSize_ScreenWidth, 179*kSize_HeightCoefficient)];
    view4.mutilinelistType = MutilinelistType_forImg;
    [self.view addSubview:view4];
    
    CCBFTMutilinelistView *view5 = [[CCBFTMutilinelistView alloc]initWithFrame:CGRectMake( 0, 100, kSize_ScreenWidth, 160*kSize_HeightCoefficient)];
    view5.mutilinelistType = MutilinelistType_textField;
    [self.view addSubview:view5];
}



-(void)doubleLineList{
    CCBFTDoubleLineListView *view = [[CCBFTDoubleLineListView alloc]initWithFrame:CGRectMake( 0, 100, 0, 70*kSize_HeightCoefficient)];
    view.doubleListType=DoubleListType_Normal;
    view.titouTitleLabel.text = @"标题文字标题文字";
    view.explainLabel.text = @"辅助性说明文字";
    [self.view addSubview:view];
    
    CCBFTDoubleLineListView *view1 = [[CCBFTDoubleLineListView alloc]initWithFrame:CGRectMake( 0, 200, 0, 0)];
    view1.doubleListType=DoubleListType_Normal;
    view1.PhtonEntry = YES;
    view1.ChanEntry = YES;
    [self.view addSubview:view1];
    
    CCBFTDoubleLineListView *view2 = [[CCBFTDoubleLineListView alloc]initWithFrame:CGRectMake( 0, 300, 0, 0)];
    view2.doubleListType=DoubleListType_Normal;
    view2.dateEntry = YES;
    [self.view addSubview:view2];
    
    CCBFTDoubleLineListView *view3 = [[CCBFTDoubleLineListView alloc]initWithFrame:CGRectMake( 0, 400, 0, 0)];
    view3.doubleListType=DoubleListType_Aroundtit;

    [self.view addSubview:view3];
    
    CCBFTDoubleLineListView *view4 = [[CCBFTDoubleLineListView alloc]initWithFrame:CGRectMake( 0, 500, 0, 70*0)];
    view4.doubleListType=DoubleListType_AroundImg;

    [self.view addSubview:view4];
    
    CCBFTDoubleLineListView *view5 = [[CCBFTDoubleLineListView alloc]initWithFrame:CGRectMake( 0, 500, 0, 0)];
    view5.doubleListType=DoubleListType_LineCenter;

    [self.view addSubview:view5];
    
}



- (void)setupUI{
    CCBFTSingleListView *view = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 100, 0, 0)];
    [view setSingleListType:SingleListTypeImge];
    view.TipTitleLabel.text = @"工作任务";
    [self.view addSubview:view];
    
    CCBFTSingleListView *view1 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 200, 0, 0)];
    [view1 setSingleListType:SingleListTypeDark];
    view1.TipTitleLabel.text = @"第三接触";
    view1.ConTitleLabel.text = @"介入";
    [self.view addSubview:view1];
    
    CCBFTSingleListView *view2 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 300, 0, 0)];
    [view2 setSingleListType:SingleListTypeBright];
//    view2.TipTitleLabel.text = @"第三接触";
//    view2.ConTitleLabel.text = @"介入";
    [self.view addSubview:view2];
    
    CCBFTSingleListView *view3 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 400, 0, 0)];
    [view3 setSingleListType:SingleListTypeDarkImage];
    //    view2.TipTitleLabel.text = @"第三接触";
    //    view2.ConTitleLabel.text = @"介入";
    [self.view addSubview:view3];
    
    CCBFTSingleListView *view4 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 500, 0, 0)];
    [view4 setSingleListType:SingleListTypeBrightImage];
    view4.PointEntry = YES;//红色的重点符号
    //    view2.TipTitleLabel.text = @"第三接触";
    //    view2.ConTitleLabel.text = @"介入";
    [self.view addSubview:view4];

    CCBFTSingleListView *view5 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 600, 0, 0)];
    [view5 setSingleListType:SingleListTypeTimeData];
    [self.view addSubview:view5];
    
    CCBFTSingleListView *view6 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 700, 0, 0)];
    view6.starTime = @"2018-10-31";
    view6.endTime = @"2019-10-31";
    [view6 setSingleListType:SingleListTypeTimeData];

    [self.view addSubview:view6];
    
    //验证码
    CCBFTSingleListView *view7 = [[CCBFTSingleListView alloc]initWithFrame:CGRectMake( 0, 800, 0, 0)];
    [view7 setSingleListType:SingleListTypeVerificationCode];
    [self.view addSubview:view7];
}


@end
