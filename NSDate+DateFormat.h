//
//  NSDate+DateFormat.h
//
//  Created by Constantin Lungu on 10/29/13.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DateFormat)
{
    DMY_DASH = 0,
    DMY_PERIOD,
    DMY_SLASH,
    MDY_DASH,
    MDY_PERIOD,
    MDY_SLASH,
    YMD_DASH,
    YMD_PERIOD,
    YMD_SLASH
};

@interface NSDate (DateFormat)

- (NSString*) stringWithDateFormat:(DateFormat) format;

@end
