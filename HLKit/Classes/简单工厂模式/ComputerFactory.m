//
//  ComputerFactory.m
//  TestDemo
//
//  Created by hanlong on 2020/5/29.
//  Copyright © 2020 韩龙. All rights reserved.
//

#import "ComputerFactory.h"
#import "Computer.h"

@implementation ComputerFactory

//生产电脑
- (Computer *)createComputerWithType:(NSString *)pcName {
    if ([pcName isEqualToString:@"联想"]) {
        LenovoComputer *lenovoPC = [[LenovoComputer alloc] init];
        return lenovoPC;
    }else{
        AppleComputer *applePC = [[AppleComputer alloc] init];
        return applePC;
    }
}

@end
