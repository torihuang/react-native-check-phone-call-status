
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

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCheckPhoneCallStatusPackage;` to the imports at the top of the file
  - Add `new RNCheckPhoneCallStatusPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-check-phone-call-status'
  	project(':react-native-check-phone-call-status').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-check-phone-call-status/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-check-phone-call-status')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNCheckPhoneCallStatus.sln` in `node_modules/react-native-check-phone-call-status/windows/RNCheckPhoneCallStatus.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNCheckPhoneCallStatus;` to the usings at the top of the file
  - Add `new RNCheckPhoneCallStatusPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNCheckPhoneCallStatus from 'react-native-check-phone-call-status';

// TODO: What to do with the module?
RNCheckPhoneCallStatus;
```
  