
# react-native-check-phone-call-status

## Getting started

`$ npm install react-native-check-phone-call-status --save`

### Mostly automatic installation

`$ react-native link react-native-check-phone-call-status`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-check-phone-call-status` and add `RNCheckPhoneCallStatus.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCheckPhoneCallStatus.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Usage
Will return 'PHONE_ON' when phone is in use, and 'PHONE_OFF' when not in use.
```javascript
import RNCheckPhoneCallStatus from 'react-native-check-phone-call-status';

RNCheckPhoneCallStatus.get((error, status) => {
  console.log('Phone status is:', status);
});
```

Would be great to have this for Android as well. Feel free to make a PR!
