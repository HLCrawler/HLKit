//
//  UILabel+Addition.m
//  SCTutorialOnline
//
//  Created by 韩龙 on 2019/12/21.
//  Copyright © 2019 TAL. All rights reserved.
//

#import "UILabel+Addition.h"

@implementation UILabel (Addition)

+ (UILabel *)labelWithFont:(UIFont *)font text:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.text = text;
    label.textColor = [UIColor blackColor];
    
    return label;
}

+ (UILabel *)labelWithFont:(UIFont *)font
                      text:(NSString *)text
                 textColor:(UIColor *)textColor
{
    UILabel *label = [self labelWithFont:font text:text];
    label.textColor = textColor;
    
    return label;
}

+ (UILabel *)labelWithFont:(UIFont *)font
                      text:(NSString *)text
                 textColor:(UIColor *)textColor
             textAlignment:(NSTextAlignment)textAlignment;
{
    UILabel *label = [self labelWithFont:font text:text textColor:textColor];
    label.textAlignment = textAlignment;
    
    return label;
}


@end
