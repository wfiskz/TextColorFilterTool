//
//  LXTextColorFilter.m
//  FiskzUILabelColorFilterTool
//
//  Created by wgz on 16/7/4.
//  Copyright © 2016年 fiskz. All rights reserved.
//

#import "LXTextColorFilter.h"
//获取十六进制颜色值
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@implementation LXTextColorFilter

+ (LXTextColorFilter *)sharedLXTextColorFilter
{
    static LXTextColorFilter *sharedLXTextColorFilterInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedLXTextColorFilterInstance = [[self alloc] init];
    });
    return sharedLXTextColorFilterInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.normalColor = UIColorFromRGB(0x6a6a6a);
        self.selectedColor = UIColorFromRGB(0x00b1ff);
    }
    return self;
}

-(void) setStateNormalColor:(UIColor*) normal StateSelected:(UIColor*)selected
{
    self.normalColor = normal;
    self.selectedColor = selected;
}

-(NSMutableAttributedString *) changesColorText:(NSString*) butedString
{
    NSArray * one  = [butedString componentsSeparatedByString:@"["];
    NSString * str1 = one[0];
    NSString * str2 = one[1];
    NSArray * two = [str2 componentsSeparatedByString:@"]"];
    NSString * str3 = two[0];
    NSString * str4 = two[1];
    NSString * str = [str1 stringByAppendingString:[str3 stringByAppendingString:str4]];
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString: str];
    //分段控制，颜色变化区域
    [attributedStr addAttribute: NSForegroundColorAttributeName value: self.normalColor range: NSMakeRange(0,str.length)];
    
    [attributedStr addAttribute: NSForegroundColorAttributeName value:self.selectedColor range: NSMakeRange(str1.length,str3.length)];
    return attributedStr;
}

-(UILabel *) changesColorText:(NSString*) butedString AndLabel:(UILabel*) control
{
    control.attributedText = [self changesColorText:(NSString*) butedString];
    return control;
}

-(UIButton *) changesColorText:(NSString*) butedString AndButton:(UIButton*) control forState:(UIControlState) state
{
    [control setAttributedTitle:[self changesColorText:(NSString*) butedString] forState:state];
    return control;
}

@end
