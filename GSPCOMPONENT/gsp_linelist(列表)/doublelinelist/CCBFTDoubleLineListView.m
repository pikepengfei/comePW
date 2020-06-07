//
//  CCBFTDoubleLineListView.m
//  GSPCOMPONENT
//
//  Created by llbt on 2019/12/8.
//  Copyright © 2019 ccbfintech. All rights reserved.
//

#define kSelfHeight 70*kSize_HeightCoefficient
#define KchangeImg @"changeImg" //修改按钮图片
#define rightimgJianjiao @"imgJianjiao"//右侧尖角图片
#define KlocationImg @"locationImg"//定位的lacation图片
#define kPhoneImg @"phongImg"
#import "CCBFTDoubleLineListView.h"


@implementation CCBFTDoubleLineListView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        self.frame = CGRectMake(frame.origin.x, frame.origin.y, kSize_ScreenWidth, kSelfHeight);
        self.PhtonEntry = NO;
        self.ChanEntry =NO;
        self.dateEntry = NO;
    }
    return self;
}
//MARK:类型的Set方法布局
-(void)setDoubleListType:(DoubleListType)doubleListType{
    _doubleListType = doubleListType;
    
    [self addSubview: self.titouTitleLabel];
    
    [self addSubview:self.explainLabel];

    if (_doubleListType == DoubleListType_Normal) {//正常双行
        //约束
        [_titouTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(14*kSize_HeightCoefficient);
        }];
        [_explainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(39*kSize_HeightCoefficient);
        }];
    }else if (_doubleListType == DoubleListType_Aroundtit){//前边有文字的双行
        [self addSubview:self.titularTitleLabel];
        [_titularTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(0);
            make.height.mas_equalTo(kSelfHeight);
        }];
        
        [_titouTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_titularTitleLabel.mas_right).offset(27*kSize_WidthCoefficient);
            make.top.mas_equalTo(14*kSize_HeightCoefficient);
        }];
        [_explainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_titularTitleLabel.mas_right).offset(27*kSize_WidthCoefficient);
            make.top.mas_equalTo(39*kSize_HeightCoefficient);
        }];
        
        [self addSubview:self.ConImg];
        [_ConImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(7*kSize_WidthCoefficient);
            make.height.mas_equalTo(12*kSize_HeightCoefficient);
            make.left.mas_equalTo(kSize_ScreenWidth-(21+7)*kSize_HeightCoefficient);
            make.top.mas_equalTo((kSelfHeight-12*kSize_HeightCoefficient)/2);
        }];
    }else if(_doubleListType == DoubleListType_AroundImg){//前边有图片的双行
        [self addSubview:self.titularImg];
        [_titularImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.height.mas_equalTo(24*kSize_HeightCoefficient);
            make.width.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo((kSelfHeight-24*kSize_HeightCoefficient)/2);

            
        }];
        [_titouTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_titularImg.mas_right).offset(27*kSize_WidthCoefficient);
            make.top.mas_equalTo(14*kSize_HeightCoefficient);
        }];
        [_explainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_titularImg.mas_right).offset(27*kSize_WidthCoefficient);
            make.top.mas_equalTo(39*kSize_HeightCoefficient);
        }];
        
        [self addSubview:self.ConImg];
        [_ConImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(7*kSize_WidthCoefficient);
            make.height.mas_equalTo(12*kSize_HeightCoefficient);
            make.left.mas_equalTo(kSize_ScreenWidth-(21+7)*kSize_HeightCoefficient);
            make.top.mas_equalTo((kSelfHeight-12*kSize_HeightCoefficient)/2);
        }];
        [self addSubview:self.KMLabel];
        [_KMLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(kSelfHeight);
            make.right.mas_equalTo(-41*kSize_WidthCoefficient);
            make.top.mas_equalTo(0);
        }];
    }else if(_doubleListType == DoubleListType_LineCenter){//有分隔线的双行
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, kSize_ScreenWidth, 104*kSize_HeightCoefficient);

        //标题约束
        [_titouTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(15*kSize_HeightCoefficient);
        }];
        [self addSubview:self.KMLabel];//距离
        _KMLabel.textColor = [UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0];
        [_KMLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-14*kSize_WidthCoefficient);
            make.top.mas_equalTo(17*kSize_HeightCoefficient);
        }];
        //线
        UIView *lineView = [self lineView];
        [self addSubview:lineView];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(49*kSize_HeightCoefficient);
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.right.mas_equalTo(-18*kSize_WidthCoefficient);
            make.height.mas_equalTo(2);
        }];
        //左侧图片
        [self addSubview:self.titularImg];
        [_titularImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(10*kSize_WidthCoefficient);
            make.height.mas_equalTo(14*kSize_HeightCoefficient);
            make.left.mas_equalTo(20*kSize_WidthCoefficient);
            make.top.mas_equalTo(70*kSize_HeightCoefficient);
        }];
        //说明文字约束-定位信息
        _explainLabel.font = [UIFont systemFontOfSize:14];
        [_explainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(40*kSize_WidthCoefficient);
            make.top.mas_equalTo(67*kSize_HeightCoefficient);
        }];
        //线
        UIView *lineVS = [self lineView];
        [self addSubview:lineVS];
        [lineVS mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(62*kSize_HeightCoefficient);
            make.right.mas_equalTo(-73*kSize_WidthCoefficient);
            make.width.mas_equalTo(2);
            make.height.mas_equalTo(28*kSize_HeightCoefficient);
        }];
        //右侧图片按钮-电话
        [self addSubview:self.ChanImgBtn];
        [_ChanImgBtn setImage:[UIImage imageNamed:kPhoneImg] forState:UIControlStateNormal];
        [_ChanImgBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-27*kSize_WidthCoefficient);
            make.top.mas_equalTo(66*kSize_HeightCoefficient);
            make.width.mas_equalTo(18*kSize_WidthCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);

        }];
        
    }

}

//MARK:日期文字是否存在
-(void)setDateEntry:(BOOL)dateEntry{
    _dateEntry = dateEntry;
    if (_dateEntry == YES) {
        [self addSubview:self.dateTimeLabel];
        [_dateTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-18*kSize_WidthCoefficient);
            make.top.mas_equalTo(39*kSize_HeightCoefficient);
        }];
    }
}

//MARK:尾部图片是否存在
-(void)setChanEntry:(BOOL)ChanEntry{
    _ChanEntry = ChanEntry;
    if (_ChanEntry == YES) {
        [self addSubview:self.ChanImgBtn];
        [_ChanImgBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-19*kSize_WidthCoefficient);
            make.top.mas_equalTo((kSelfHeight-20*kSize_HeightCoefficient)/2);
        }];
    }
    
}
//MARK:电话号码是否存在  set方法
-(void)setPhtonEntry:(BOOL)PhtonEntry{
    _PhtonEntry = PhtonEntry;
    if (_PhtonEntry == YES) {
        [self addSubview:self.PhtonLabel];
        if (_titouTitleLabel) {
            [_PhtonLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(_titouTitleLabel.mas_right).offset(18*kSize_WidthCoefficient);
                make.top.mas_equalTo(14*kSize_HeightCoefficient);
            }];
        }else{
            [_PhtonLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(78*kSize_WidthCoefficient);
                make.top.mas_equalTo(14*kSize_HeightCoefficient);
            }];
        }
    }
}



//MARK:======懒加载========
-(UIView*)lineView{
    UIView *lineV = [[UIView alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 49*kSize_HeightCoefficient, 339, 2)];
    lineV.backgroundColor =kUIColorFromRGB(0xF4F5F7);
    
    return lineV;
}
-(UILabel *)KMLabel{
    if (!_KMLabel) {
        _KMLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 25*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _KMLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"距离数" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:38/255.0 green:110/255.0 blue:237/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _KMLabel.attributedText = string;
        _KMLabel.textAlignment = NSTextAlignmentRight;
        _KMLabel.alpha = 1.0;
    }
    return _KMLabel;
}
-(UIImageView *)titularImg{
    if (!_titularImg) {
        _titularImg = [[UIImageView alloc]init];
        _titularImg.image = [UIImage imageNamed:KlocationImg];
    }
    return _titularImg;
}
-(UIImageView *)ConImg{
    if (!_ConImg) {
        _ConImg = [[UIImageView alloc]init];
        _ConImg.image = [UIImage imageNamed:rightimgJianjiao];
    }
    return _ConImg;
}

-(UILabel *)titularTitleLabel{
    if (!_titularTitleLabel) {
        _titularTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 25*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _titularTitleLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"标题文字" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:41/255.0 green:51/255.0 blue:70/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _titularTitleLabel.attributedText = string;
        _titularTitleLabel.textAlignment = NSTextAlignmentLeft;
        _titularTitleLabel.alpha = 1.0;
    }
    return _titularTitleLabel;
}
-(UILabel *)dateTimeLabel{
    if (!_dateTimeLabel) {
        _dateTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(78*kSize_WidthCoefficient, 14*kSize_HeightCoefficient, 100, 20*kSize_HeightCoefficient)];
        _dateTimeLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"时间日期" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:12]}];
        _dateTimeLabel.attributedText = string;
        _dateTimeLabel.textAlignment = NSTextAlignmentRight;
        _dateTimeLabel.alpha = 1.0;
    }
    return _dateTimeLabel;
}
-(UIButton *)ChanImgBtn{
    if (!_ChanImgBtn) {
        _ChanImgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _ChanImgBtn.frame = CGRectMake(78*kSize_WidthCoefficient, 14*kSize_HeightCoefficient, 20*kSize_WidthCoefficient, 20*kSize_HeightCoefficient);
        [_ChanImgBtn setImage:[UIImage imageNamed:KchangeImg] forState:UIControlStateNormal];
        
    }
    return _ChanImgBtn;
}
-(UILabel *)PhtonLabel{
    if (!_PhtonLabel) {
        _PhtonLabel = [[UILabel alloc]initWithFrame:CGRectMake(78*kSize_WidthCoefficient, 14*kSize_HeightCoefficient, 100, 20*kSize_HeightCoefficient)];
        _PhtonLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"电话号码" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:41/255.0 green:51/255.0 blue:70/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _PhtonLabel.attributedText = string;
        _PhtonLabel.textAlignment = NSTextAlignmentLeft;
        _PhtonLabel.alpha = 1.0;
    }
    return _PhtonLabel;
}

-(UILabel *)titouTitleLabel{
    if (!_titouTitleLabel) {
        _titouTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 14*kSize_HeightCoefficient, 100, 20*kSize_HeightCoefficient)];
        _titouTitleLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"标题文字" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:41/255.0 green:51/255.0 blue:70/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _titouTitleLabel.attributedText = string;
        _titouTitleLabel.textAlignment = NSTextAlignmentLeft;
        _titouTitleLabel.alpha = 1.0;
    }
    return _titouTitleLabel;
}
-(UILabel *)explainLabel{
    if (!_explainLabel) {
        _explainLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 39*kSize_HeightCoefficient, 200, 17*kSize_HeightCoefficient)];
        _explainLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"辅助性说明文字" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:12]}];
        _explainLabel.attributedText = string;
        _explainLabel.textAlignment = NSTextAlignmentLeft;
        _explainLabel.alpha = 1.0;
    }
    return _explainLabel;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
