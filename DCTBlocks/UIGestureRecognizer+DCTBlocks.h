//
//  UIGestureRecognizer+DCTBlocks.h
//  DCTBlocks
//
//  Created by Daniel Tull on 01.08.2012.
//  Copyright (c) 2012 Daniel Tull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIGestureRecognizer (DCTBlocks)

- (id)dct_addHandler:(void(^)())handler;
- (void)dct_removeHandler:(id)opaqueIdentifier;

@end
