//
//  UIView+KDS_FrameHelper.m
//  KDS_Phone
//
//  Created by yehot on 15/10/14.
//  Copyright (c) 2015年 kds. All rights reserved.
//

#import "UIView+KDS_FrameHelper.h"

@implementation UIView (KDS_FrameHelper)

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.height;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.size.height + self.frame.origin.y;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.width;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.size.width + self.frame.origin.x;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)heightEqualToView:(UIView *)view {
    self.height = view.height;
}

- (void)widthEqualToView:(UIView *)view {
    self.width = view.width;
}

- (void)sizeEqualToView:(UIView *)view {
    self.frame = CGRectMake(self.x, self.y, view.width, view.height);
}

- (void)fillWidth {
    self.width = self.superview.width;
}

- (void)fillHeight {
    self.height = self.superview.height;
}

- (void)fill {
    self.frame = CGRectMake(0, 0, self.superview.width, self.superview.height);
}

@end