
#import "RNCheckPhoneCallStatus.h"
#import "React/RCTLog.h"
#import <AVFoundation/AVAudioSession.h>
#import<CoreTelephony/CTCallCenter.h>
#import<CoreTelephony/CTCall.h>

@implementation RNCheckPhoneCallStatus

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(get:(RCTResponseSenderBlock)callback)
{
    NSString *phoneStatus = @"PHONE_OFF";
    CTCallCenter *ctCallCenter = [[CTCallCenter alloc] init];
    if (ctCallCenter.currentCalls != nil)
    {
        NSArray* currentCalls = [ctCallCenter.currentCalls allObjects];
        for (CTCall *call in currentCalls)
        {
            if(call.callState == CTCallStateConnected)
            {
                phoneStatus = @"PHONE_ON";
            }
        }
    }
    callback(@[[NSNull null], phoneStatus]);
}

@end
