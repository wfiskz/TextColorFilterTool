//
//  ViewController.m
//  FiskzUILabelColorFilterTool
//
//  Created by wgz on 16/7/4.
//  Copyright © 2016年 fiskz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LXTextColorFilter * colorFilter = [LXTextColorFilter sharedLXTextColorFilter];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 300, 50)];
    NSMutableAttributedString * attributed = [colorFilter chengesColorText:@"云对雨[雪对风]晚照对晴空"];
    label1.attributedText = attributed;
    [self.view addSubview:label1];
    
    [colorFilter setNormalColor:[UIColor colorWithRed:0 green:0 blue:1 alpha:1]];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 50)];
    label2 = [colorFilter chengesColorText:@"贫对富[塞对通]野叟对溪童" AndUILabel:label2];
    [self.view addSubview:label2];
    
    [colorFilter setStateNormalColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1] StateSelected:[UIColor colorWithRed:0 green:1 blue:0 alpha:1]];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 150, 300, 50)];
    button = [colorFilter chengesColorText:@"女子眉纤,[额下现一弯新月];" AndUIButton:button forState:UIControlStateNormal];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:button];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
