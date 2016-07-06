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

-(NSMutableAttributedString *) changesColorText:(NSString*) butedString;

-(UILabel *) changesColorText:(NSString*) butedString AndLabel:(UILabel*) control;

-(UIButton *) changesColorText:(NSString*) butedString AndButton:(UIButton*) control forState:(UIControlState) state;

@end
