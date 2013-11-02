//
//  CallPlist.h
//  alive
//
//  Created by Isken on 10/6/11.
//  Copyright (c) 2011 COEVO Technology. All rights reserved.
//

/**
 * hot to use
 * import "CallPlist.h" to your file
 * sample: #import "CallPlist.h"
 */

#import <Foundation/Foundation.h>


@interface CallPlist : NSObject
/**
 * Get plist and return NSArray or NSDictionary
 * sample: [CallPlist getPlistWithName:@"test"];
 */
+ (id) getPlistWithName:(NSString *)plistName;

/**
 * Save to local plist
 * sample: [CallPlist getPlistWithName:@"test" data:[NSArray arrayWithObjects:@"1", @"2", @"3", nil]];
 */
+ (void) saveToPlist:(NSString *)plistName data:(id)data;

/**
 * Clear local plist file
 * sample: [CallPlist clearPlist:@"test"];
 */
+ (void) clearPlist:(NSString *)plistName;

/**
 * Get local file path
 */
+ (NSString *) fileLocation:(NSString *)name;

@end
