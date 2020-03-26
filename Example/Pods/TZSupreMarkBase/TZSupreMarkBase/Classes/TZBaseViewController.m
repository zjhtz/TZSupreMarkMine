//
//  TZBaseViewController.m
//  TZAluminumSupermarket
//
//  Created by tangzhen on 2020/3/19.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "TZBaseViewController.h"

@interface TZBaseViewController ()

@end

@implementation TZBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
}

//适配暗黑模式
- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    if (@available(iOS 13.0, *)) {
        UIColor *color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return [UIColor darkGrayColor];
            } else {
                return [UIColor whiteColor];
            }
            
        }];
        self.view.backgroundColor = color;
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
