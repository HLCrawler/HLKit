//
//  HLMediator+ModuleA.m
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import "HLMediator+ModuleA.h"

static NSString * const kModuleTarget = @"Factory";
static NSString * const kModuleBGetFactoryVC = @"FactoryViewController";

@implementation HLMediator (ModuleA)

- (UIViewController *)getModuleAControllerName:(NSString *)name {
    return [[HLMediator sharedInstance] performTarget:kModuleTarget
                                               action:kModuleBGetFactoryVC
                                               params:@{@"name":name}
                                    shouldCacheTarget:YES];
}
@end
