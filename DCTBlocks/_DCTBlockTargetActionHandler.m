//
//  _DCTBlockTargetActionHandler.m
//  DCTBlocks
//
//  Created by Daniel Tull on 01.08.2012.
//  Copyright (c) 2012 Daniel Tull. All rights reserved.
//

#import "_DCTBlockTargetActionHandler.h"

@implementation _DCTBlockTargetActionHandler

- (IBAction)action:(id)sender {
	if (self.handler != nil)
		self.handler();
}

@end
