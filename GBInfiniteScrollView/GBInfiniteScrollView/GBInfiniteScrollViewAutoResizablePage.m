//
//  GBInfiniteScrollViewAutoResizablePage.m
//  GBInfiniteScrollView
//
//  Created by Gerardo Blanco García on 02/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBInfiniteScrollViewAutoResizablePage.h"

@implementation GBInfiniteScrollViewAutoResizablePage

- (void)forceLayout
{
    [super forceLayout];
    
    CGSize superSize = self.superview.frame.size;
    
    [self updateView:self withSize:superSize];
    
    [self updateView:self.contentView withSize:superSize];
    
    for (UIView *subview in self.contentView.subviews)
        [self updateView:subview withSize:superSize];
}

- (void)updateView:(UIView *)view withSize:(CGSize)size
{
    CGRect currentFrame = view.frame;
    
    currentFrame.size = size;
    
    view.frame = currentFrame;
}

@end
