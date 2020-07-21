//
//  HLMediator+ModuleA.h
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import <HLMediator/HLMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLMediator (ModuleA)

- (UIViewController *)getModuleAControllerName:(NSString *)name;

- (void)getModuleACallback:(void(^)(NSString *name))callback;

@end

NS_ASSUME_NONNULL_END
