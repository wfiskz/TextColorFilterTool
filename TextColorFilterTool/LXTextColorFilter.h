//
//  LXTextColorFilter.h
//  FiskzUILabelColorFilterTool
//
//  Created by wgz on 16/7/4.
//  Copyright © 2016年 fiskz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface LXTextColorFilter : NSObject

@property (nonatomic, strong) UIColor* normalColor;

@property (nonatomic, strong) UIColor* selectedColor;

+ (LXTextColorFilter *)sharedLXTextColorFilter;

-(void) setStateNormalColor:(UIColor*) normal StateSelected:(UIColor*)selected;

-(NSMutableAttributedString *) chengesColorText:(NSString*) butedString;

-(UILabel *) chengesColorText:(NSString*) butedString AndUILabel:(UILabel*) control;

-(UIButton *) chengesColorText:(NSString*) butedString AndUIButton:(UIButton*) control forState:(UIControlState) state;

@end
