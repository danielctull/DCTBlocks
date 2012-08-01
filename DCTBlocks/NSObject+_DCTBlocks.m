//
//  NSObject+_DCTBlocks.m
//  DCTBlocks
//
//  Created by Daniel Tull on 01.08.2012.
//  Copyright (c) 2012 Daniel Tull. All rights reserved.
//

#import "NSObject+_DCTBlocks.h"
#import <objc/runtime.h>

@implementation NSObject (_DCTBlocks)

- (NSMutableArray *)dctBlocks_handlers {
	
	NSMutableArray *handlers = objc_getAssociatedObject(self, _cmd);
	
	if (!handlers) {
		handlers = [NSMutableArray new];
		objc_setAssociatedObject(self, _cmd, handlers, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	}
	
	return handlers;
}

@end
