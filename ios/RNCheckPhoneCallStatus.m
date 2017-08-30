
#import "RNCheckPhoneCallStatus.h"
#import "React/RCTLog.h"
#import <AVFoundation/AVAudioSession.h>

@implementation RNCheckPhoneCallStatus

RCT_EXPORT_MODULE()
// - (dispatch_queue_t)methodQueue
// {
//     return dispatch_get_main_queue();
// }
RCT_EXPORT_METHOD(get)
{
  float volume = [AVAudioSession sharedInstance].outputVolume;
  RCTLogInfo(@"The system volume level is %f", volume);
}

@end
