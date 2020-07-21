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

- (void)getModuleACallback:(void(^)(NSString *name))callback {
    
    NSMutableDictionary *paramsDic = [[NSMutableDictionary alloc] init];
    if (!callback) {
        [paramsDic setObject:callback forKey:@"callback"];
    }
    [[HLMediator sharedInstance] performTarget:@"Factory" action:@"ViewControllerCallback" params:paramsDic shouldCacheTarget:YES];
}
@end
