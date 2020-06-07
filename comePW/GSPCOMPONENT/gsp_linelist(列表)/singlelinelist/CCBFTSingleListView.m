//
//  MBSingleList.m
//  GSPCOMPONENT
//
//  Created by llbt on 2019/12/5.
//  Copyright © 2019 ccbfintech. All rights reserved.
//
#define kSelfHeight 50*kSize_HeightCoefficient
//右侧尖角号图片
#define rightimgJianjiao @"imgJianjiao"

#import "CCBFTSingleListView.h"

@implementation CCBFTSingleListView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.frame = CGRectMake(frame.origin.x, frame.origin.y, kSize_ScreenWidth, kSelfHeight);
        self.backgroundColor = [UIColor whiteColor];
        _PointEntry = NO;
    }
    return self;
}
//MARK:样式Set方法
-(void)setSingleListType:(SingleListType)singleListType{
    _singleListType = singleListType;
    [self addSubview:self.TipTitleLabel];
    [_TipTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(kSelfHeight);
        make.left.mas_equalTo(18*kSize_HeightCoefficient);
        make.top.mas_equalTo(0);
    }];
    if (_singleListType==SingleListTypeImge) {
        [self addSubview:self.ConImg];
        [_ConImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(7*kSize_WidthCoefficient);
            make.height.mas_equalTo(12*kSize_HeightCoefficient);
            make.left.mas_equalTo(kSize_ScreenWidth-(21+7)*kSize_HeightCoefficient);
            make.top.mas_equalTo((kSelfHeight-12*kSize_HeightCoefficient)/2);
        }];
        
    }else if(_singleListType==SingleListTypeDark){
        [self addSubview:self.ConTitleLabel];
        [_ConTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight);
            make.right.mas_equalTo(-26*kSize_HeightCoefficient);
            make.top.mas_equalTo(0);
        }];
    }else if(_singleListType==SingleListTypeBright){
        [self addSubview:self.ConTitleLabel];
        [_ConTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight);
            make.right.mas_equalTo(-26*kSize_HeightCoefficient);
            make.top.mas_equalTo(0);
        }];
        _ConTitleLabel.textColor = [UIColor colorWithRed:88/255.0 green:97/255.0 blue:125/255.0 alpha:1.0];
    }else if(_singleListType==SingleListTypeDarkImage){
        [self addSubview:self.ConImg];
        [_ConImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(7*kSize_WidthCoefficient);
            make.height.mas_equalTo(12*kSize_HeightCoefficient);
            make.left.mas_equalTo(kSize_ScreenWidth-(21+7)*kSize_HeightCoefficient);
            make.top.mas_equalTo((kSelfHeight-12*kSize_HeightCoefficient)/2);
        }];
        
        [self addSubview:self.ConTitleLabel];
        [_ConTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight);
            make.right.mas_equalTo(_ConImg.mas_left).offset(-12*kSize_HeightCoefficient);
            make.top.mas_equalTo(0);
        }];
    }else if(_singleListType==SingleListTypeBrightImage){
        [self addSubview:self.ConImg];
        [_ConImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(7*kSize_WidthCoefficient);
            make.height.mas_equalTo(12*kSize_HeightCoefficient);
            make.left.mas_equalTo(kSize_ScreenWidth-(21+7)*kSize_HeightCoefficient);
            make.top.mas_equalTo((kSelfHeight-12*kSize_HeightCoefficient)/2);
        }];
        
        [self addSubview:self.ConTitleLabel];
        [_ConTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight);
            make.right.mas_equalTo(_ConImg.mas_left).offset(-12*kSize_HeightCoefficient);
            make.top.mas_equalTo(0);
        }];
        _ConTitleLabel.textColor = [UIColor colorWithRed:88/255.0 green:97/255.0 blue:125/255.0 alpha:1.0];
        
    }else if (_singleListType==SingleListTypeTimeData){
        [self addSubview:self.timeDateLabel];
        [_timeDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight);
            make.right.mas_equalTo(-26*kSize_HeightCoefficient);
            make.top.mas_equalTo(0);
        }];
    }else if (_singleListType==SingleListTypeVerificationCode){
        [self addSubview:self.ConImg];
        _ConImg.image = [UIImage imageNamed:@"codeImg"];//验证码需要的图片
        [_ConImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(90*kSize_WidthCoefficient);
            make.height.mas_equalTo(36*kSize_HeightCoefficient);
            make.right.mas_equalTo(-19*kSize_WidthCoefficient);
            make.top.mas_equalTo(7*kSize_WidthCoefficient);
        }];
        [self addSubview:self.codeTextField];
        [_codeTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight-7*kSize_WidthCoefficient*2);
            make.right.mas_equalTo(_ConImg.mas_left).offset(-12*kSize_HeightCoefficient);
            make.top.mas_equalTo(7*kSize_WidthCoefficient);
            make.width.mas_equalTo(100*kSize_WidthCoefficient);
        }];
    }

}
//MARK:重点符号是否存在 set方法 默认为NO
-(void)setPointEntry:(BOOL)PointEntry{
    _PointEntry = PointEntry;
    if (_PointEntry == YES) {
        [self addSubview:self.pointTitle];

        if (_TipTitleLabel) {
            [_pointTitle mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(_TipTitleLabel.mas_right).offset(5);
                make.top.mas_equalTo(0);
                make.height.mas_equalTo(kSelfHeight);
            }];
        }else{
            [_pointTitle mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(18*kSize_HeightCoefficient);
                make.top.mas_equalTo(0);
                make.height.mas_equalTo(kSelfHeight);
            }];
        }
        
    }
}

//MARK:====懒加载====
-(UITextField *)codeTextField{
    if (!_codeTextField) {
        _codeTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 120, 40)];
        _codeTextField.textAlignment = NSTextAlignmentCenter;
        _codeTextField.placeholder = @"请输入验证码";
        //_codeTextField.center = CGPointMake(_imageView.width/2.0f, _imageView.height/2.0f);
        //_codeTextField.delegate = self;
    }
    return _codeTextField;
}
-(UILabel *)timeDateLabel{
    if (!_timeDateLabel) {
        _timeDateLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, kSelfHeight)];
        _timeDateLabel.numberOfLines = 0;
        NSMutableAttributedString *str ;
            
        if ((_starTime == nil|| [_starTime class] == [NSNull class] || [_starTime length] == 0)&&(_endTime == nil || [_endTime class] == [NSNull class] || [_endTime length] == 0)) {
            NSString *nullSStr = @"请选择开始日期";
            NSString *nullEStr = @"请选择结束日期";
            str = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@  至  %@",nullSStr,nullEStr]];
            [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, str.length)];
            [str addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14],NSForegroundColorAttributeName: [UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0]} range:NSMakeRange(0, nullSStr.length)];
            [str addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14],NSForegroundColorAttributeName: [UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0]} range:NSMakeRange(str.length-nullSStr.length, nullSStr.length)];

        }else{
            str = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@  至  %@",_starTime,_endTime]];
            [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, str.length)];

        }
        _timeDateLabel.attributedText = str;
        _timeDateLabel.textAlignment = NSTextAlignmentLeft;
        _timeDateLabel.alpha = 1.0;
    }
    return _timeDateLabel;
}
-(UILabel *)pointTitle{
    if (!_pointTitle) {
        _pointTitle = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_HeightCoefficient, 0, 100, kSelfHeight)];
        _pointTitle.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"*" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:242/255.0 green:88/255.0 blue:88/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _pointTitle.attributedText = string;
        _pointTitle.textAlignment = NSTextAlignmentLeft;
        _pointTitle.alpha = 1.0;
    }
    return _pointTitle;
}
-(UIImageView *)ConImg{
    if (!_ConImg) {
        _ConImg = [[UIImageView alloc]init];
        _ConImg.image = [UIImage imageNamed:rightimgJianjiao];
    }
    return _ConImg;
}

-(UILabel *)TipTitleLabel{
    if (!_TipTitleLabel) {
        _TipTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_HeightCoefficient, 0, 100, kSelfHeight)];
        _TipTitleLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"标题文字" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:41/255.0 green:51/255.0 blue:70/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _TipTitleLabel.attributedText = string;
        _TipTitleLabel.textAlignment = NSTextAlignmentLeft;
        _TipTitleLabel.alpha = 1.0;
        
    }
    return _TipTitleLabel;
}
-(UILabel *)ConTitleLabel{
    if (!_ConTitleLabel) {
        _ConTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(kSize_ScreenWidth-100, 0, kSize_ScreenWidth-(kSize_ScreenWidth-100)-26*kSize_WidthCoefficient, kSelfHeight)];
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"暗提示" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];

        _ConTitleLabel.attributedText = string;
        _ConTitleLabel.numberOfLines = 0;
        _ConTitleLabel.textAlignment = NSTextAlignmentRight;
        _ConTitleLabel.alpha = 1.0;
        
    }
    return _ConTitleLabel;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
