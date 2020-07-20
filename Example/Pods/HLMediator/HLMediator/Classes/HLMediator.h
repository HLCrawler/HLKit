//
//  HLMediator.h
//  TestDemo
//
//  Created by hanlong on 2020/7/15.
//  Copyright © 2020 韩龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString * _Nonnull const kCTMediatorParamsKeySwiftTargetModuleName;

@interface HLMediator : NSObject

+ (instancetype _Nonnull)sharedInstance;

// 远程App调用入口
- (id _Nullable)performActionWithUrl:(NSURL * _Nullable)url completion:(void(^_Nullable)(NSDictionary * _Nullable info))completion;
// 本地组件调用入口
- (id _Nullable )performTarget:(NSString * _Nullable)targetName action:(NSString * _Nullable)actionName params:(NSDictionary * _Nullable)params shouldCacheTarget:(BOOL)shouldCacheTarget;
- (void)releaseCachedTargetWithFullTargetName:(NSString * _Nullable)fullTargetName;

@end

NS_ASSUME_NONNULL_END
