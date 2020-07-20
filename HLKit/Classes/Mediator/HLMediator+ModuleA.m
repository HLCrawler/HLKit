//
//  HLMediator+ModuleA.m
//  HLMediator
//
//  Created by hanlong on 2020/7/15.
//

#import "HLMediator+ModuleA.h"

static NSString * const kModuleTarget = @"HYXKit";
static NSString * const kModuleBGetFactoryVC = @"getModuleAController";

@implementation HLMediator (ModuleA)

- (UIViewController *)getModuleAController:(NSString *)uid {
    return [[HLMediator sharedInstance] performTarget:kModuleTarget
                                                action:kModuleBGetRACTestVC
                                                params:@{@"uid":uid}
                                     shouldCacheTarget:YES];
}

@end
