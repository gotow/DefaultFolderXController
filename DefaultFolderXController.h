//
//  DefaultFolderXController.h
//
//  Created by Jon Gotow on 7/7/17.
//  Copyright © 2017 Jon Gotow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DefaultFolderXController : NSObject

// Enable or disable Default Folder X. This does nothing if Default Folder X isn't running.
+ (BOOL)setEnabled:(BOOL)enabled;

@end
