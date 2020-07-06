//
//  UIView+Addition.h
//  SCTutorialOnline
//
//  Created by 韩龙 on 2019/12/23.
//  Copyright © 2019 TAL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Addition)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGSize  size;

#pragma mark - api
- (nullable UIImage *)snapshotImage;

- (nullable UIImage *)snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;

- (UIViewController *)getViewControllerOfCurrentView;

- (NSInteger)getPositionViewIndexWithDistenationView:(UIView *)distenationView superView:(UIView *)superView;

@end

NS_ASSUME_NONNULL_END
