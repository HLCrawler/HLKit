//
//  HLMediator+ModuleA.m
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import "HLMediator+ModuleA.h"

static NSString * const kModuleTarget = @"Factory";
static NSString * const kModuleAGetFactoryVC = @"FactoryViewController";
static NSString * const KModuleAGetFactoryVCCallback = @"ViewControllerCallback";

@implementation HLMediator (ModuleA)

- (UIViewController *)getModuleAControllerName:(NSString *)name {
    return [self performTarget:kModuleTarget action:kModuleAGetFactoryVC params:@{@"name":name} shouldCacheTarget:YES];
}

- (void)getModuleACallback:(void(^)(NSString *name))callback {
    
    NSMutableDictionary *paramDic = [[NSMutableDictionary alloc] init];
    if (callback != nil) {
        [paramDic setObject:callback forKey:@"callback"];
    }
    [self performTarget:kModuleTarget action:KModuleAGetFactoryVCCallback params:paramDic shouldCacheTarget:YES];
}
@end
