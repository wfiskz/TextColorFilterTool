//
//  LXTextColorFilter.m
//  colorBluetoothLampV3
//
//  Created by wgz on 16/6/25.
//  Copyright © 2016年 TRP. All rights reserved.
//

#import "LXTextColorFilter.h"

@implementation LXTextColorFilter


+(NSMutableAttributedString *) chengesColorText:(NSString*) butedString
{
    NSArray *array  = [butedString componentsSeparatedByString:@"["];
    NSString * str1 = array[0];
    NSString * str2 = array[1];
    NSArray *array2 = [str2 componentsSeparatedByString:@"]"];
    NSString * str3 = array2[0];
    NSString * str4 = array2[1];
    NSString * str = [str1 stringByAppendingString:[str3 stringByAppendingString:str4]];
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString: str];
    //分段控制，最开始4个字符颜色设置成黑色
    [attributedStr addAttribute: NSForegroundColorAttributeName value: UIColorFromRGB(0x6a6a6a) range: NSMakeRange(0,str.length)];
   
    [attributedStr addAttribute: NSForegroundColorAttributeName value: UIColorFromRGB(0x00b1ff) range: NSMakeRange(str1.length,str3.length)];
    return attributedStr;
}
@end
