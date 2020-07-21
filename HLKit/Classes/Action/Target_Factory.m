//
//  Target_Factory.m
//  HLKit
//
//  Created by hanlong on 2020/7/20.
//

#import "Target_Factory.h"
#import "FactoryViewController.h"

@interface Target_Factory ()

@property (nonatomic,weak) FactoryViewController *factoryVC;

@end

@implementation Target_Factory

- (UIViewController *)Action_FactoryViewController:(NSDictionary *)params {
    
    FactoryViewController *factoryVC = [[FactoryViewController alloc] init];
    factoryVC.factoryName = params[@"name"];
    
    return factoryVC;
}

- (void)Action_ViewControllerCallback:(NSDictionary *)params {
    
    viewControllerCallback block = params[@"callback"];
    self.factoryVC.block = block;
}

@end
