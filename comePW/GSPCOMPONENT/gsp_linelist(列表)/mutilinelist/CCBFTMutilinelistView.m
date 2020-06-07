//
//  CCBFTMutilinelistView.m
//  GSPCOMPONENT
//
//  Created by 鹏 on 2019/12/9.
//  Copyright © 2019 ccbfintech. All rights reserved.
//
#define KchangeImg @"AddImg"
#import "CCBFTMutilinelistView.h"
@interface CCBFTMutilinelistView ()
@property(nonatomic,strong)UIView *blueSque;

@end

@implementation CCBFTMutilinelistView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        _blueSqueEn= NO;
    }
    return self;
}

-(void)setMutilinelistType:(MutilinelistType)mutilinelistType{
    _mutilinelistType = mutilinelistType;
    [self addSubview:self.titularTitleLabel];

    if (_mutilinelistType == MutilinelistType_Normal) {//0
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, kSize_ScreenWidth, 120*kSize_HeightCoefficient);
        //标题
        [_titularTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(31*kSize_WidthCoefficient);
            make.top.mas_equalTo(15*kSize_HeightCoefficient);
            make.right.mas_equalTo(17*kSize_WidthCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);

        }];
        [self addSubview:self.blueSque];//蓝色小块
        //单位
        [self addSubview:self.locaLabel];
        [_locaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(50*kSize_HeightCoefficient);
        }];
        //信息
        [self addSubview:self.mationTitleLabel];
        [_mationTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-15*kSize_WidthCoefficient);
            make.top.mas_equalTo(50*kSize_HeightCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);
        }];
        //时间
        [self addSubview:self.holdingLabel];
        [_holdingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(85*kSize_HeightCoefficient);
        }];
        //时间信息
        [self addSubview:self.mationhodLabel];
        [_mationhodLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-15*kSize_WidthCoefficient);
            make.top.mas_equalTo(85*kSize_HeightCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);
        }];
    }else if (_mutilinelistType == MutilinelistType_Norline){//1
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, kSize_ScreenWidth, 153*kSize_HeightCoefficient);

        //标题约束
        [_titularTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(31*kSize_WidthCoefficient);
            make.top.mas_equalTo(15*kSize_HeightCoefficient);
            make.right.mas_equalTo(17*kSize_WidthCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);

        }];
        [self addSubview:self.blueSque];//蓝色小块
        //线
        UIView *lineo = [self lineView];
        [self addSubview:lineo];
        [lineo mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(49*kSize_HeightCoefficient);
            make.right.mas_equalTo(-18*kSize_WidthCoefficient);
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.height.mas_equalTo(2*kSize_HeightCoefficient);
        }];
        //题目二
        [self addSubview:self.locaLabel];
        [_locaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(lineo.mas_bottom).offset(15*kSize_HeightCoefficient);
        }];
        //信息
        [self addSubview:self.mationTitleLabel];
        [_mationTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-15*kSize_WidthCoefficient);
            make.top.mas_equalTo(lineo.mas_bottom).offset(15*kSize_HeightCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);
        }];
        //线
        UIView *linet = [self lineView];
        [self addSubview:linet];
        [linet mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(lineo.mas_bottom).offset(49*kSize_HeightCoefficient);
            make.right.mas_equalTo(-18*kSize_WidthCoefficient);
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.height.mas_equalTo(2*kSize_HeightCoefficient);
        }];
        //题目三
        [self addSubview:self.holdingLabel];
        [_holdingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(linet.mas_bottom).offset(16*kSize_HeightCoefficient);
        }];
        
        [self addSubview:self.mationhodLabel];
        [_mationhodLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-15*kSize_WidthCoefficient);
            make.top.mas_equalTo(linet.mas_bottom).offset(15*kSize_HeightCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);
        }];
        
    }else if (_mutilinelistType == MutilinelistType_Character){//2
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, kSize_ScreenWidth, 126*kSize_HeightCoefficient);

        _titularTitleLabel.font = [UIFont systemFontOfSize:16];
        [_titularTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(15*kSize_HeightCoefficient);
            make.right.mas_equalTo(-17*kSize_WidthCoefficient);

        }];
        //题目二
        [self addSubview:self.locaLabel];
        [_locaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(91*kSize_HeightCoefficient);
        }];
        //信息
        [self addSubview:self.mationTitleLabel];
        _mationTitleLabel.textColor=[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0];
        [_mationTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-15*kSize_WidthCoefficient);
            make.top.mas_equalTo(91*kSize_HeightCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);
        }];
    }else if (_mutilinelistType == MutilinelistType_forImg){
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, kSize_ScreenWidth, 179*kSize_HeightCoefficient);

        //标题约束
        [_titularTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(31*kSize_WidthCoefficient);
            make.top.mas_equalTo(13*kSize_HeightCoefficient);
            make.height.mas_equalTo(24*kSize_HeightCoefficient);

        }];
        [self addSubview:self.blueSque];//蓝色小块
        
        [self addSubview:self.ChanImgBtn];
        
        [self addSubview:self.mationTitleLabel];
        _mationTitleLabel.textColor=[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0];
        [_mationTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-18*kSize_WidthCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);
            make.bottom.mas_equalTo(-15*kSize_WidthCoefficient);
        }];
        
    }else if (_mutilinelistType == MutilinelistType_textField){
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, kSize_ScreenWidth, 165*kSize_HeightCoefficient);

        //标题约束
        [_titularTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.top.mas_equalTo(15*kSize_HeightCoefficient);
            make.height.mas_equalTo(20*kSize_HeightCoefficient);

        }];
        [self addSubview:self.massionTextField];
        [_massionTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(18*kSize_WidthCoefficient);
            make.right.mas_equalTo(-18*kSize_WidthCoefficient);
            make.top.mas_equalTo(45*kSize_HeightCoefficient);
            make.height.mas_equalTo(100*kSize_HeightCoefficient);

        }];
    }
    
}
//蓝色块是否存在
-(void)setBlueSqueEn:(BOOL)blueSqueEn{
    _blueSqueEn = blueSqueEn;
    if (_blueSqueEn == YES) {
        [self addSubview:self.blueSque];
    }else{
        [self.blueSque reloadInputViews];
    }

}

//MARK:===懒加载===
-(UIView*)lineView{
    UIView *lineV = [[UIView alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 49*kSize_HeightCoefficient, 339, 2)];
    lineV.backgroundColor =kUIColorFromRGB(0xF4F5F7);
    
    return lineV;
}
//标题文字
-(UILabel *)titularTitleLabel{
    if (!_titularTitleLabel) {
        _titularTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 25*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _titularTitleLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"综合服务一" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:41/255.0 green:51/255.0 blue:70/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _titularTitleLabel.attributedText = string;
        _titularTitleLabel.textAlignment = NSTextAlignmentLeft;
        _titularTitleLabel.alpha = 1.0;
    }
    return _titularTitleLabel;
}
//蓝色块
-(UIView *)blueSque{
    if (!_blueSque) {
        _blueSque = [[UIView alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 19*kSize_HeightCoefficient, 3, 12)];
        _blueSque.backgroundColor = [UIColor colorWithRed:38/255.0 green:110/255.0 blue:237/255.0 alpha:1.0];
    }
    return _blueSque;
    
}
//第二行信息题头
-(UILabel *)locaLabel{
    if (!_locaLabel) {
        _locaLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 50*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _locaLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"承办单位" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _locaLabel.attributedText = string;
        _locaLabel.textAlignment = NSTextAlignmentLeft;
        _locaLabel.alpha = 1.0;
    }
    return _locaLabel;
}
//第二行信息
-(UILabel *)mationTitleLabel{
    if (!_mationTitleLabel) {
        _mationTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 25*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _mationTitleLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"红河州泸西县" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:88/255.0 green:97/255.0 blue:125/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _mationTitleLabel.attributedText = string;
        _mationTitleLabel.textAlignment = NSTextAlignmentRight;
        _mationTitleLabel.alpha = 1.0;
        
    }
    return _mationTitleLabel;
}
//第三行信息题头
-(UILabel *)holdingLabel{
    if (!_holdingLabel) {
        _holdingLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 85*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _holdingLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"举办时间" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _holdingLabel.attributedText = string;
        _holdingLabel.textAlignment = NSTextAlignmentLeft;
        _holdingLabel.alpha = 1.0;
    }
    
    return _holdingLabel;
}
//第三行信息
-(UILabel *)mationhodLabel{
    if (!_mationhodLabel) {
        _mationhodLabel = [[UILabel alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 85*kSize_HeightCoefficient, 60, 20*kSize_HeightCoefficient)];
        _mationhodLabel.numberOfLines = 0;
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"2018-11-10 至 2018-12-30" attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:88/255.0 green:97/255.0 blue:125/255.0 alpha:1.0], NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        _mationhodLabel.attributedText = string;
        _mationhodLabel.textAlignment = NSTextAlignmentRight;
        _mationhodLabel.alpha = 1.0;
        
    }
    return _mationhodLabel;
    
}
//图片选择按钮
-(UIButton *)ChanImgBtn{
    if (!_ChanImgBtn) {
           _ChanImgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
           _ChanImgBtn.frame = CGRectMake(32*kSize_WidthCoefficient, 47*kSize_HeightCoefficient, 90*kSize_WidthCoefficient, 90*kSize_WidthCoefficient);
           [_ChanImgBtn setImage:[UIImage imageNamed:KchangeImg] forState:UIControlStateNormal];
           
       }
       return _ChanImgBtn;
}
-(UITextView *)massionTextField{
    if (!_massionTextField) {
        _massionTextField = [[UITextView alloc]initWithFrame:CGRectMake(18*kSize_WidthCoefficient, 45*kSize_HeightCoefficient, 339*kSize_WidthCoefficient, 100*kSize_WidthCoefficient)];
        _massionTextField.backgroundColor = [UIColor colorWithRed:247/255.0 green:248/255.0 blue:251/255.0 alpha:1.0];
        _massionTextField.font = [UIFont systemFontOfSize:20];
        _massionTextField.textColor = [UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0];
        _massionTextField.text = @"请输入，最多300字";
        _massionTextField.delegate = self;

    }
    return _massionTextField;
}

#pragma mark - UITextViewDelegate
- (void)textViewDidEndEditing:(UITextView *)textView
{
    if(textView.text.length < 1){
        textView.text = @"请输入，最多300字";
        textView.textColor = [UIColor colorWithRed:189/255.0 green:194/255.0 blue:210/255.0 alpha:1.0];;
    }
}
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if([textView.text isEqualToString:@"请输入，最多300字"]){
        textView.text=@"";
        textView.textColor=[UIColor blackColor];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
