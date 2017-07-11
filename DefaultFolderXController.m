//
//  DefaultFolderXController.m
//
//  Created by Jon Gotow on 7/7/17.
//  Copyright © 2017 Jon Gotow. All rights reserved.
//

#import "DefaultFolderXController.h"

@implementation DefaultFolderXController

static NSString *dfxBundleID = @"com.stclairsoft.DefaultFolderX5";
static NSString *dfxEnablePboardType = @"EnableFlag";

//-------------------------------------------------------------------------------------------------------------
// Enable or disable Default Folder X. This does nothing if Default Folder X isn't running.
+ (BOOL)setEnabled:(BOOL)enabled
{
    BOOL result = NO;
    
    if([NSRunningApplication runningApplicationsWithBundleIdentifier:dfxBundleID].count > 0) {
        NSPasteboard *pb = [NSPasteboard pasteboardWithName:dfxBundleID];
        [pb declareTypes:@[dfxEnablePboardType] owner:nil];
        if(enabled) {
            [pb setString:@"YES" forType:dfxEnablePboardType];
        }
        else {
            [pb setString:@"NO" forType:dfxEnablePboardType];
        }
        result = YES;
    }
    
    return result;
}

@end
