
#import "RNCheckPhoneCallStatus.h"
#import "React/RCTLog.h"
#import <AVFoundation/AVAudioSession.h>
#import<CoreTelephony/CTCallCenter.h>
#import<CoreTelephony/CTCallStateConnected.h>

@implementation RNCheckPhoneCallStatus

RCT_EXPORT_MODULE()
// - (dispatch_queue_t)methodQueue
// {
//     return dispatch_get_main_queue();
// }
RCT_EXPORT_METHOD(get)
{
  NSString *phoneStatus = @"not on a call yo";
  CTCallCenter *ctCallCenter = [[CTCallCenter alloc] init];
  if (ctCallCenter.currentCalls != nil)
  {
    NSArray* currentCalls = [ctCallCenter.currentCalls allObjects];
    for (CTCall *call in currentCalls)
    {
      if(call.callState == CTCallStateConnected)
      {
        phoneStatus = @"Im on da phoneeeee";
        RCTLogInfo(@"ON A CALL %@\n", phoneStatus);
        return TRUE
      }
    }
  }
  RCTLogInfo(@"ON A CALL %@\n", phoneStatus);
  return FALSE
}

// RCT_EXPORT_METHOD(isOnCall)
// {
//   CTCallCenter *callCenter = [[[CTCallCenter alloc] init] autorelease];
//   for (CTCall *call in callCenter.currentCalls)  {
//       if (call.callState == CTCallStateConnected) {
//           RCTLogInfo(@"++++++++===============IS ON A CALL");
//       }
//   }
//   RCTLogInfo(@"++++++++===============NOT ON A CALL");
// }

@end
