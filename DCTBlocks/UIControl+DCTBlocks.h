//
//  UIControl+DCTBlocks.h
//  DCTBlocks
//
//  Created by Daniel Tull on 01.08.2012.
//  Copyright (c) 2012 Daniel Tull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (DCTBlocks)

- (id)dct_addHandlerForControlEvents:(UIControlEvents)controlEvents usingBlock:(void(^)())handler;
- (void)dct_removeHandler:(id)opaqueIdentifier forControlEvents:(UIControlEvents)controlEvents;

@end
