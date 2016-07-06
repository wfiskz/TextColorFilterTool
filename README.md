# TextColorFilterTool
 渲染UILabel或者UIButton两种颜色文字
 
1.使用接口：

-(void) setStateNormalColor:(UIColor*) normal StateSelected:(UIColor*)selected;

-(NSMutableAttributedString *) changesColorText:(NSString*) butedString;

-(UILabel *) changesColorText:(NSString*) butedString AndLabel:(UILabel*) control;

-(UIButton *) changesColorText:(NSString*) butedString AndButton:(UIButton*) control forState:(UIControlState) state; 

2.效果： 

![效果图](渲染效果图.jpg)
