# Get Plist
Easy to use plist in objective-c. Get/Save in one line.

# how to use

```
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
```
