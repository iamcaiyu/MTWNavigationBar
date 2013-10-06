//
//  MTWNavBarButton.m
//  Bokeh Camera
//
//  Created by CaiYu on 13-4-10.
//  Copyright (c) 2013年 Meituwan. All rights reserved.
//

#import "MTWNavBarButton.h"

@implementation MTWNavBarButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundImage:[[UIImage imageNamed:@"img-button"] resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 8.0f, 30.0f, 32.0f)] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor colorWithWhite:1.0 alpha:1.0] forState:UIControlStateNormal];
        //[self setTitleColor:[UIColor colorWithWhite:0.4 alpha:1.0] forState:UIControlStateHighlighted];
        self.titleLabel.font=[UIFont systemFontOfSize:12.0f];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setBackgroundImage:[[UIImage imageNamed:@"img-button"] resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 8.0f, 30.0f, 32.0f)] forState:UIControlStateNormal];
        //[self setTitleColor:[UIColor colorWithWhite:1.0 alpha:1.0] forState:UIControlStateNormal];
        //[self setTitleColor:[UIColor colorWithWhite:0.4 alpha:1.0] forState:UIControlStateHighlighted];
        //self.titleLabel.font=[UIFont systemFontOfSize:12.0f];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
