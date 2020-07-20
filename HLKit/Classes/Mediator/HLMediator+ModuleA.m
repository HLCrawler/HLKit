//
//  HLMediator+ModuleA.m
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import "HLMediator+ModuleA.h"

static NSString * const kModuleTarget = @"HLKit";
static NSString * const kModuleBGetFactoryVC = @"getModuleAController";

@implementation HLMediator (ModuleA)

- (UIViewController *)getModuleAController:(NSString *)uid {
    return [[HLMediator sharedInstance] performTarget:kModuleTarget
                                               action:kModuleBGetFactoryVC
                                               params:@{@"uid":uid}
                                    shouldCacheTarget:YES];
}
@end
