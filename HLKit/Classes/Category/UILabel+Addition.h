//
//  UILabel+Addition.h
//  SCTutorialOnline
//
//  Created by 韩龙 on 2019/12/21.
//  Copyright © 2019 TAL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Addition)

/**
 *  UILabel的基本设置
 *  @param font 字体格式
 *  @param text 内容
 */
+ (UILabel *)labelWithFont:(UIFont *)font text:(NSString *)text;

/**
 *  UILabel的基本设置
 *  @param font 字体格式
 *  @param text 内容
 *  @param textColor 字体颜色
*/
+ (UILabel *)labelWithFont:(UIFont *)font
                      text:(NSString *)text
                 textColor:(UIColor *)textColor;
/**
 *  UILabel的基本设置
 *  @param font 字体格式
 *  @param text 内容
 *  @param textColor 字体颜色
 *  @param textAlignment 对齐方式
*/
+ (UILabel *)labelWithFont:(UIFont *)font
                      text:(NSString *)text
                 textColor:(UIColor *)textColor
             textAlignment:(NSTextAlignment)textAlignment;

@end

NS_ASSUME_NONNULL_END
