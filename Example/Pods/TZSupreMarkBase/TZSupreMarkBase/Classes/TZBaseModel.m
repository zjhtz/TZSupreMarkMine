//
//  TZBaseModel.m
//  TZAluminumSupermarket
//
//  Created by tangzhen on 2020/3/19.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "TZBaseModel.h"

@implementation TZBaseModel


+ (NSArray *)modelPropertyBlacklist
{
    return @[@"hash",@"description",@"debugDescription",@"superclass",];
}
@end
