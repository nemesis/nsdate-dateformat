//
//  NSDate+DateFormat.m
//
//  Created by Constantin Lungu on 10/29/13.
//

#import "NSDate+DateFormat.h"

@implementation NSDate (DateFormat)

- (NSString*) stringWithDateFormat:(DateFormat)format
{
    NSString* separator, *dateString;
    switch (format) {
        case DMY_DASH: case MDY_DASH: case YMD_DASH:
        {
            separator = @"-";
            break;
        }
        case DMY_PERIOD: case MDY_PERIOD: case YMD_PERIOD:
        {
            separator = @".";
            break;
        }
        case DMY_SLASH: case MDY_SLASH: case YMD_SLASH:
        {
            separator = @"/";
            break;
        }
        default:
        {
            separator = @"-";
            break;
        }
    }

    NSDateComponents* components = [[NSCalendar currentCalendar] components: NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear                                     fromDate:self];

    switch (format) {
        case DMY_DASH: case DMY_PERIOD: case DMY_SLASH:
        {
            dateString = [NSString stringWithFormat:@"%02i%@%02i%@%04i", components.day, separator, components.month, separator, components.year];
            break;
        }
        case MDY_DASH: case MDY_PERIOD: case MDY_SLASH:
        {
            dateString = [NSString stringWithFormat:@"%02i%@%02i%@%04i", components.month, separator, components.day, separator, components.year];
            break;
        }
        case YMD_DASH: case YMD_PERIOD: case YMD_SLASH:
        {
            dateString = [NSString stringWithFormat:@"%04i%@%02i%@%02i", components.year, separator, components.month, separator, components.day];
            break;
        }
        default:
        {
            dateString = [NSString stringWithFormat:@"%02i%@%02i%@%04i", components.day, separator, components.month, separator, components.year];
            break;
        }
    }

    return dateString;
}

@end
