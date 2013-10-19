//
//  MTWNavgationController.h
//  BWMaster
//
//  Created by 蔡宇 on 13-1-17.
//  Copyright (c) 2013年 Meituwan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTWNavigationBar : UIImageView

@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) UIColor *textColor;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (nonatomic) BOOL showShadow;

@end
