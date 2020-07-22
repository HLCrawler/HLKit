//
//  HLMediator+ModuleA.m
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import "HLMediator+ModuleA.h"

static NSString * const kModuleTarget = @"Factory";
static NSString * const kModuleAGetFactoryVC = @"FactoryViewController";
static NSString * const KModuleAGetCallback = @"ViewControllerCallback";

@implementation HLMediator (ModuleA)

- (UIViewController *)getModuleAControllerName:(NSString *)name {
    return [self performTarget:kModuleTarget action:kModuleAGetFactoryVC params:@{@"name":name} shouldCacheTarget:YES];
}

- (void)getModuleAController:(id)controller callback:(void(^)(NSString *name))callback {
    
    NSMutableDictionary *paramDic = [[NSMutableDictionary alloc] init];
    if (callback != nil) {
        [paramDic setObject:callback forKey:@"callback"];
        [paramDic setObject:controller forKey:@"factory"];
    }
    [self performTarget:kModuleTarget action:KModuleAGetCallback params:paramDic shouldCacheTarget:YES];
}
@end
