//
//  UIView+FrameResizing.m
//  Reach
//
//  Created by Tom Bachant on 6/13/14.
//  Copyright (c) 2014 Tom Bachant. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "UIView+FrameUtils.h"

@implementation UIView (FrameUtils)

#pragma mark -
#pragma mark - Frame

#pragma mark - Init

- (void)setFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height {
    self.frame = CGRectMake(x, y, width, height);
}

#pragma mark - Size

#pragma mark Getter

- (CGFloat)getFrameSizeWidth {
    return CGRectGetWidth(self.frame);
}

- (CGFloat)getFrameSizeHeight {
    return CGRectGetHeight(self.frame);
}

#pragma mark Setter

- (void)setFrameSizeWidth:(CGFloat)sizeWidth {
    CGRect frame = self.frame;
    frame.size.width = sizeWidth;
    self.frame = frame;
}

- (void)setFrameSizeHeight:(CGFloat)sizeHeight {
    CGRect frame = self.frame;
    frame.size.height = sizeHeight;
    self.frame = frame;
}

#pragma mark -
#pragma mark - Origin

#pragma mark Getter

- (CGFloat)getFrameOriginX {
    return CGRectGetMinX(self.frame);
}

- (CGFloat)getFrameOriginY {
    return CGRectGetMinY(self.frame);
}

#pragma mark Setter

- (void)setFrameOriginX:(CGFloat)xOrigin {
    CGRect frame = self.frame;
    frame.origin.x = xOrigin;
    self.frame = frame;
}

- (void)setFrameOriginY:(CGFloat)yOrigin {
    CGRect frame = self.frame;
    frame.origin.y = yOrigin;
    self.frame = frame;
}

#pragma mark -
#pragma mark - Center

#pragma mark - Init

- (void)setCenterX:(CGFloat)x y:(CGFloat)y {
    self.center = CGPointMake(x, y);
}

#pragma mark - Points

#pragma mark Getter

- (CGFloat)getCenterX {
    return CGRectGetMidX(self.frame);
}

- (CGFloat)getCenterY {
    return CGRectGetMidY(self.frame);
}

#pragma mark Setter

- (void)setCenterX:(CGFloat)xCenter {
    CGPoint center = self.center;
    center.x = xCenter;
    self.center = center;
}

- (void)setCenterY:(CGFloat)yCenter {
    CGPoint center = self.center;
    center.y = yCenter;
    self.center = center;
}

@end
