
#import "RNCheckPhoneCallStatus.h"
#import "React/RCTLog.h"
#import <AVFoundation/AVAudioSession.h>
#import<CoreTelephony/CTCallCenter.h>
#import<CoreTelephony/CTCallStateConnected.h>

@implementation RNCheckPhoneCallStatus

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(get)
{
    CTCallCenter *ctCallCenter = [[CTCallCenter alloc] init];
    if (ctCallCenter.currentCalls != nil)
    {
        NSArray* currentCalls = [ctCallCenter.currentCalls allObjects];
        for (CTCall *call in currentCalls)
        {
            if(call.callState == CTCallStateConnected)
            {
                return @"PHONE_ON";
            }
        }
    }
    return @"PHONE_OFF";
}

@end
