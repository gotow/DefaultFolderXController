//
//  DFXControl.m
//  Open & Save Tester
//
//  Created by Jon Gotow on 7/7/17.
//  Copyright © 2017 Jon Gotow. All rights reserved.
//

#import "DFXController.h"
#import <ScriptingBridge/ScriptingBridge.h>

// Declare these to shut the compiler up
@interface SBApplication()
- (void)Enable;
- (void)Disable;
@end

// A one-method singleton
@implementation DFXController

//-------------------------------------------------------------------------------------------------------------
// Enable or disable Default Folder X. This does nothing if Default Folder X isn't running.
+ (BOOL)setDefaultFolderXEnabled:(BOOL)enabled
{
    static NSString *dfxBundleID = @"com.stclairsoft.DefaultFolderX5";
    BOOL result = NO;
    
    if([NSRunningApplication runningApplicationsWithBundleIdentifier:dfxBundleID].count > 0) {
        SBApplication *dfx = [SBApplication applicationWithBundleIdentifier:dfxBundleID];
        if(enabled) {
            [dfx Enable];
        }
        else {
            [dfx Disable];
        }
        result = YES;
    }
    
    return result;
}

@end
