##NSDate+DateFormat

A category on NSDate that implements DMY/MDY/YMD date formats with dash/period/slash separators

##Sample Usage:

```
1. #import "NSDate+DateFormat.h" // import the category header file into your project
2. NSDate* referenceDate = [NSDate dateWithTimeIntervalSince1970:0]; // get a reference date 
3. NSString* dateString = [referenceDate stringWithDateFormat:DMY_DASH]; // dateString is "01-01-1970"
```
