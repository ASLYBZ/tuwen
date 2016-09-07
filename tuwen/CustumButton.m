//
//  CustumButton.m
//  tuwen
//
//  Created by 王卫亮 on 16/8/15.
//  Copyright © 2016年 王卫亮. All rights reserved.
//

#import "CustumButton.h"
#define DefaultFont @"Helvetica"

@implementation CustumButton

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setUI];
    }
    return self;
}


- (void)setUI {
    [self setImage:[UIImage imageNamed:@"shopCart_gray"] forState:UIControlStateNormal];
    
    self.titleLabel.backgroundColor = [UIColor redColor];
    self.titleLabel.layer.cornerRadius = 8;
    self.titleLabel.layer.masksToBounds = YES;
    self.titleLabel.font = [UIFont fontWithName:DefaultFont size:12];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.adjustsFontSizeToFitWidth = YES;
    
    
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    [super setTitle:([title isEqualToString:@"0"] ? @"" : title) forState:state];
}



- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect rect = self.titleLabel.frame;
    rect.size.width = 16;
    rect.size.height = 16;
    
    rect.origin.x -= 6;
    rect.origin.y = 8;
    
    self.titleLabel.frame = rect;
    self.contentEdgeInsets = UIEdgeInsetsMake(10, 15, 11, 16);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
