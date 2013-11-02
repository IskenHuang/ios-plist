//
//  CallPlist.m
//  alive
//
//  Created by Isken on 10/6/11.
//  Copyright (c) 2011 COEVO Technology. All rights reserved.
//

#import "CallPlist.h"

@implementation CallPlist

+ (id) getPlistWithName:(NSString *)plistName{
    NSArray *myArray = [NSArray arrayWithContentsOfFile:[self fileLocation:plistName]];
    if(myArray != nil){
        return myArray;
    }else{
        myArray = nil;
        NSDictionary *myDictionary = [NSDictionary dictionaryWithContentsOfFile:[self fileLocation:plistName]];
        return myDictionary;
    }
}

+ (void) saveToPlist:(NSString *)plistName data:(id)data{
    [data writeToFile:[self fileLocation:plistName] atomically:YES];
}


+ (void) clearPlist:(NSString *)plistName{
    NSArray *myArray = [[NSArray alloc] init];
    [myArray writeToFile:[self fileLocation:plistName] atomically:YES];
}

+ (NSString *) fileLocation:(NSString *)name{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    return [documentsDir stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist", name]];
}

@end
