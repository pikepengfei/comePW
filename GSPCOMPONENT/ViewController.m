//
//  ViewController.m
//  GSPCOMPONENT
//
//  Created by zhangxiaosen on 2019/12/4.
//  Copyright © 2019 ccbfintech. All rights reserved.
//

#import "ViewController.h"
#import "CSFMacro.h"
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


@end
