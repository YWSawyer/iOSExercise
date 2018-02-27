//
//  YWListViewCell.m
//  iOSExercise
//
//  Created by wei.yuan on 27/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import "YWListViewCell.h"

@interface YWListViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *desLbl;

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation YWListViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTitle:(NSString *)title {
    if (![title isEqualToString:_titleLbl.text]) {
        _titleLbl.text = title;
    }
}

- (void)setDigest:(NSString *)digest {
    if (![digest isEqualToString:_desLbl.text]) {
        _desLbl.text = digest;
    }
}

- (void)setImageHref:(NSString *)imageHref {
    [self.imgView sd_setImageWithURL:[NSURL URLWithString:imageHref] placeholderImage:[UIImage imageNamed:@"fail_icon"]];
}

@end
