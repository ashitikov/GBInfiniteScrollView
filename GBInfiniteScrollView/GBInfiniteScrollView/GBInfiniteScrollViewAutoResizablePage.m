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
    
    CGSize superSize = self.superview.size;
    
    self.size = superSize;
    
    self.contentView.size = superSize;
    
    for (UIView *subview in self.contentView.subviews)
        subview.size = superSize;
}

@end
