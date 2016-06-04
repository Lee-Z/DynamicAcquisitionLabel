//
//  UILabel+Extension.m
//  DynamicAcquisitionLableH
//
//  Created by app on 16/6/4.
//  Copyright © 2016年 app. All rights reserved.
//

#import "UILabel+Extension.h"


#define WIDTH ([UIScreen  mainScreen].bounds.size.width)
#define HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation UILabel (Extension)

-(CGFloat)getSpaceLabelHeight:(NSString *)str withWidh:(CGFloat)width
{

    NSMutableParagraphStyle *paragphStyle=[[NSMutableParagraphStyle alloc]init];
    
    paragphStyle.lineSpacing=0;//设置行距为0
    paragphStyle.firstLineHeadIndent=0.0;
    paragphStyle.hyphenationFactor=0.0;
    paragphStyle.paragraphSpacingBefore=0.0;
    
    NSDictionary *dic=@{
                        
                    NSFontAttributeName:[UIFont systemFontOfSize:15], NSParagraphStyleAttributeName:paragphStyle, NSKernAttributeName:@1.0f
                       
                    };
    CGSize size=[str boundingRectWithSize:CGSizeMake(width, HEIGHT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    
    return size.height;

}


@end
