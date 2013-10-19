//
//  MTWNavgationController.m
//  BWMaster
//
//  Created by 蔡宇 on 13-1-17.
//  Copyright (c) 2013年 Meituwan. All rights reserved.
//

#import "MTWNavigationBar.h"
#import <QuartzCore/QuartzCore.h>

// Navigation bar size
#define kNavBarWidth 320.0f
#define kNavBarHeight 44.0f
// TextLabel location and size
#define kTextLabelWidth 280.0f
#define kTextLabelHeight 44.0f
#define kTextLabelX (kNavBarWidth/2.0-kTextLabelWidth/2.0)
#define kTextLabelY 0.0f
#define kTextSize 21.0f
#define kTextColor (0x3f/255.0)

// Left button
#define kLeftButtonX (0.0f)
#define kLeftButtonY 0.0f
#define kLeftButtonSize 44.0f
// Right button
#define kRightButtonX (kNavBarWidth-kLeftButtonX-kLeftButtonSize)
#define kRightButtonY kLeftButtonY
#define kRightButtonSize kLeftButtonSize

@interface MTWNavigationBar ()

@property (strong, nonatomic) UILabel *textLabel;
//@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation MTWNavigationBar

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.image=[[UIImage imageNamed:@"img-navbar"] resizableImageWithCapInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)];
        self.userInteractionEnabled=YES;
        [self.layer setShadowColor:[UIColor blackColor].CGColor];
        [self.layer setShadowRadius:5];
        [self.layer setShadowOffset:CGSizeMake(1, 1)];
        [self.layer setShadowOpacity:1];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Set up new navigation bar
        //self.alpha=0.9;
        self.frame=CGRectMake(0.0f, 0.0f, kNavBarWidth, kNavBarHeight);
        self.userInteractionEnabled=YES;
        //_imageView=[[UIImageView alloc]initWithFrame:self.frame];
        self.image=[[UIImage imageNamed:@"img-navbar"] resizableImageWithCapInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)];
        [self.layer setShadowColor:[UIColor blackColor].CGColor];
        [self.layer setShadowRadius:5];
        [self.layer setShadowOffset:CGSizeMake(1, 1)];
        [self.layer setShadowOpacity:1];
        //[self addSubview:self.imageView];
        
        /* UI controller
        _textLabel=[[UILabel alloc]initWithFrame:CGRectMake(kTextLabelX, kTextLabelY, kTextLabelWidth, kTextLabelHeight)];
        self.textLabel.backgroundColor=[UIColor clearColor];
        self.textLabel.font=[UIFont systemFontOfSize:kTextSize];
        self.textLabel.textAlignment=UITextAlignmentCenter;
        self.textLabel.textColor=[UIColor colorWithWhite:kTextColor alpha:1.0f];

        // Add subView
        [self addSubview:self.textLabel];*/
    }
    return self;
}

- (void)setText:(NSString *)text
{
    _text=text;
    if (self.textLabel==nil) {
        // UI controller
        _textLabel=[[UILabel alloc]initWithFrame:CGRectMake(kTextLabelX, kTextLabelY, kTextLabelWidth, kTextLabelHeight)];
        self.textLabel.backgroundColor=[UIColor clearColor];
        self.textLabel.font=[UIFont systemFontOfSize:kTextSize];
        self.textLabel.textAlignment=UITextAlignmentCenter;
        self.textLabel.textColor=[UIColor colorWithWhite:kTextColor alpha:1.0f];
        [self addSubview:self.textLabel];
    }
    self.textLabel.text=text;
}

- (void)setTextColor:(UIColor *)textColor
{
    _textColor=textColor;
    self.textLabel.textColor=textColor;
}

- (void)setBackgroundImage:(UIImage *)backgroundImage
{
    _backgroundImage=backgroundImage;
    self.image=backgroundImage;
}

- (void)setShowShadow:(BOOL)showShadow
{
    _showShadow=showShadow;
    [self.layer setShadowOpacity:0];
}

@end
