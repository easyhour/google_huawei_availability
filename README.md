# Google and Huawei Service Availability
 A Flutter plugin to detect the availability of the Google Play Services and Huawei HMS Services API on Android devices. 
 It can also be used to check the device is a Huawei device or not.

### Installing

To use this package, add `google_huawei_availability` as a dependency in your `pubspec.yaml` file.

### Usage

```dart

import 'package:google_huawei_availability/google_huawei_availability.dart';

TO CHECK DEVICE OTHER THAN HUAWEI
bool isGoogle = await GoogleHuaweiAvailability.isGoogleServiceAvailable;

TO CHECK IS HUAWEI DEVICE
bool isHuawei = await GoogleHuaweiAvailability.isHuaweiServiceAvailable;

```
