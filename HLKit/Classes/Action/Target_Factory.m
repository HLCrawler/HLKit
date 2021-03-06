//
//  Target_Factory.m
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import "Target_Factory.h"
#import "FactoryViewController.h"

@implementation Target_Factory

- (UIViewController *)Action_FactoryViewController:(NSDictionary *)params {
    
    FactoryViewController *factoryVC = [[FactoryViewController alloc] init];
    factoryVC.factoryName = params[@"name"];
    
    return factoryVC;
}

- (void)Action_ViewControllerCallback:(NSDictionary *)params {
     
    FactoryViewController *factoryVC = params[@"factory"];
    viewControllerCallback block = params[@"callback"];
    factoryVC.block = block;
}

@end
