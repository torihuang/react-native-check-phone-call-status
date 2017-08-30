
package com.reactlibrary;

import android.content.Context;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNCheckPhoneCallStatusModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNCheckPhoneCallStatusModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNCheckPhoneCallStatus";
  }

  @Override
  public String get() {
    TelephonyManager manager = (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
    String currentPhoneState = manager.getCallState();
    Log.d("===========currentPhoneState===========", currentPhoneState);
    if (currentPhoneState == CALL_STATE_OFFHOOK) {
      return 'PHONE_ON';
    } else {
      return 'PHONE_OFF';
    }
  }
}
