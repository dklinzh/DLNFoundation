//
//  NSString+DLNShort.m
//  DLNFoundation
//
//  Created by Linzh on 12/22/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import "NSString+DLNShort.h"
#import "NSString+DLNReverse.h"

static NSString *const ALPHABET = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
static const uint BASE_COUNT = 62;

@implementation NSString (DLNShort)

- (NSString *)dln_short {
    return [self dln_encode:[self dln_decode:self]];
}

- (uint)dln_decode:(NSString *)string {
    uint num = 0;
    if (string) {
        uint len = (uint)[string length];
        for (uint i=0; i<len; i++) {
            NSRange range = [ALPHABET rangeOfString:[string substringWithRange:NSMakeRange(i, 1)]];
            if (range.location != NSNotFound) {
                uint index = (uint)range.location;
                num = num * BASE_COUNT + index;
            }
        }
    }
    
    return num;
}

- (NSString *)dln_encode:(uint)num {
    NSMutableString *string = [[NSMutableString alloc] init];
    while ((num & 0x0FFFF) > 0) {
        [string appendString:[ALPHABET substringWithRange:NSMakeRange((num & 0x0FFFF) % BASE_COUNT, 1)]];
        num /= BASE_COUNT;
    }
    
    return [string dln_reverse];
}
@end

