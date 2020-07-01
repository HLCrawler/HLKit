//
//  UIView+BorderLine.h
//  SCTutorialOnline
//
//  Created by xes on 2020/5/25.
//  Copyright © 2020 TAL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(NSUInteger, UIBorderSideType) {
    UIBorderSideTypeAll    = 0,
    UIBorderSideTypeTop    = 1 << 0,
    UIBorderSideTypeBottom = 1 << 1,
    UIBorderSideTypeLeft   = 1 << 2,
    UIBorderSideTypeRight  = 1 << 3,
};

@interface UIView (BorderLine)

- (UIView *)borderForColor:(UIColor *)color borderWidth:(CGFloat)borderWidth borderType:(UIBorderSideType)borderType;

@end

NS_ASSUME_NONNULL_END
