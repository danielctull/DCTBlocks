//
//  _DCTBlockTargetActionHandler.h
//  DCTBlocks
//
//  Created by Daniel Tull on 01.08.2012.
//  Copyright (c) 2012 Daniel Tull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _DCTBlockTargetActionHandler : NSObject

@property (nonatomic, copy) void (^handler)();

- (IBAction)action:(id)sender;

@end
