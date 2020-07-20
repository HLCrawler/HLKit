//
//  HLMediator+ModuleB.h
//  HLMediator
//
//  Created by hanlong on 2020/7/15.
//
#import <HLMediator/HLMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLMediator (ModuleA)

- (UIViewController *)getModuleBController:(NSString *)uid;

@end

NS_ASSUME_NONNULL_END
