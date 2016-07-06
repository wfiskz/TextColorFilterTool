# TextColorFilterTool
 渲染UILabel或者UIButton两种颜色文字

 在设置文字的时候渲染颜色是用[]来显示选中颜色的。

 例如云对雨[雪对风]晚照对晴空

 
1.使用接口：

-(void) setStateNormalColor:(UIColor*) normal StateSelected:(UIColor*)selected;

-(NSMutableAttributedString *) changesColorText:(NSString*) butedString;

-(UILabel *) changesColorText:(NSString*) butedString AndLabel:(UILabel*) control;

-(UIButton *) changesColorText:(NSString*) butedString AndButton:(UIButton*) control forState:(UIControlState) state; 

2.效果： 

![效果图](渲染效果图.jpg)
