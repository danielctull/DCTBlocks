//
//  UIControl+DCTBlocks.m
//  DCTBlocks
//
//  Created by Daniel Tull on 01.08.2012.
//  Copyright (c) 2012 Daniel Tull. All rights reserved.
//

#import "UIControl+DCTBlocks.h"
#import "NSObject+_DCTBlocks.h"
#import "_DCTBlockTargetActionHandler.h"

@implementation UIControl (DCTBlocks)

- (id)dct_addHandlerForControlEvents:(UIControlEvents)controlEvents usingBlock:(void(^)())handler {
	
	_DCTBlockTargetActionHandler *targetActionHandler = [_DCTBlockTargetActionHandler new];
	targetActionHandler.handler = handler;
	
	[self addTarget:targetActionHandler action:@selector(action:) forControlEvents:controlEvents];
	[[self dctBlocks_handlers] addObject:targetActionHandler];
	
	return targetActionHandler;
}

- (void)dct_removeHandler:(id)opaqueIdentifier forControlEvents:(UIControlEvents)controlEvents {
	[[self dctBlocks_handlers] removeObject:opaqueIdentifier];
	[self removeTarget:opaqueIdentifier action:@selector(action:) forControlEvents:controlEvents];
}

@end
