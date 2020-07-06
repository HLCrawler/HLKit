//
//  ComputerFactory.h
//  TestDemo
//
//  Created by hanlong on 2020/5/29.
//  Copyright © 2020 韩龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LenovoComputer.h"
#import "AppleComputer.h"

NS_ASSUME_NONNULL_BEGIN

@interface ComputerFactory : NSObject

//生产电脑
- (Computer *)createComputerWithType:(NSString *)pcName;

@end

NS_ASSUME_NONNULL_END
