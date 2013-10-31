#import "NSDate+DateFormat.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(NSDate_DateFormatSpec)

describe(@"NSDate+DateFormat", ^{

    __block NSDate* referenceDate;
    __block NSString* dateString;

    beforeEach(^{
        referenceDate = [NSDate dateWithTimeIntervalSince1970:0]; // 1st hangover of 1970
        dateString = @"";
    });

    describe(@"transforming a date into string using the DateFormat category on the NSDate class", ^{

        // ---------------- DMY Format
        context(@"DMY_DASH Format", ^{

            it(@"should return the string represantation in DMY_DASH format", ^{
                dateString = [referenceDate stringWithDateFormat:DMY_DASH];
                expect(dateString).to(equal(@"01-01-1970"));
            });

        });

        context(@"DMY_PERIOD Format", ^{

            it(@"should return the string represantation in DMY_PERIOD format", ^{
                dateString = [referenceDate stringWithDateFormat:DMY_PERIOD];
                expect(dateString).to(equal(@"01.01.1970"));
            });
            
        });

        context(@"DMY_SLASH Format", ^{

            it(@"should return the string represantation in DMY_SLASH format", ^{
                dateString = [referenceDate stringWithDateFormat:DMY_SLASH];
                expect(dateString).to(equal(@"01/01/1970"));
            });

        });

        // ---------------- MDY Format
        context(@"MDY_DASH Format", ^{

            it(@"should return the string represantation in MDY_DASH format", ^{
                dateString = [referenceDate stringWithDateFormat:MDY_DASH];
                expect(dateString).to(equal(@"01-01-1970"));
            });

        });

        context(@"MDY_PERIOD Format", ^{

            it(@"should return the string represantation in MDY_PERIOD format", ^{
                dateString = [referenceDate stringWithDateFormat:MDY_PERIOD];
                expect(dateString).to(equal(@"01.01.1970"));
            });

        });

        context(@"MDY_SLASH Format", ^{

            it(@"should return the string represantation in MDY_SLASH format", ^{
                dateString = [referenceDate stringWithDateFormat:MDY_SLASH];
                expect(dateString).to(equal(@"01/01/1970"));
            });
            
        });

        // ------------------ YMD Format
        context(@"YMD_DASH Format", ^{

            it(@"should return the string represantation in YMD_DASH format", ^{
                dateString = [referenceDate stringWithDateFormat:YMD_DASH];
                expect(dateString).to(equal(@"1970-01-01"));
            });

        });

        context(@"YMD_PERIOD Format", ^{

            it(@"should return the string represantation in YMD_PERIOD format", ^{
                dateString = [referenceDate stringWithDateFormat:YMD_PERIOD];
                expect(dateString).to(equal(@"1970.01.01"));
            });

        });

        context(@"YMD_SLASH Format", ^{

            it(@"should return the string represantation in YMD_SLASH format", ^{
                dateString = [referenceDate stringWithDateFormat:YMD_SLASH];
                expect(dateString).to(equal(@"1970/01/01"));
            });
            
        });

    });

});

SPEC_END
