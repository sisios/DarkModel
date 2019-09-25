//
//  BViewController.m
//  暗黑模式demo
//
//  Created by 未思语 on 2019/9/25.
//  Copyright © 2019 未思语. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
{
    UILabel *label;
}
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    label.text = @"ViewController 跟随手机进行暗黑适配";
    label.font = [UIFont systemFontOfSize:20.0];
    label.numberOfLines = 0;
    [self.view addSubview:label];
    // Do any additional setup after loading the view.
}

-(void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    NSLog(@"traitCollectionDidChange");
   //创建动态 color
    UIColor *color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor blackColor];
        } else {
            return [UIColor whiteColor];
        }
    }];
    self.view.backgroundColor = color;
    // 修改label的textcolor
    UIColor *textColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor darkGrayColor];
        } else {
            return [UIColor redColor];
        }
    }];
    label.textColor = textColor;

}
-(UIUserInterfaceStyle)overrideUserInterfaceStyle {
    return UIUserInterfaceStyleLight;
}

@end
