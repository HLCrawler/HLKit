//
//  FactoryViewController.h
//  TestDemo
//
//  Created by 韩龙 on 2020/5/28.
//  Copyright © 2020 韩龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^viewControllerCallback)(NSString *className);

@interface FactoryViewController : UIViewController

@property (nonatomic,strong) NSString *factoryName;

@property (nonatomic,copy) viewControllerCallback block;

@end

NS_ASSUME_NONNULL_END
