# Google and Huawei Service Availability
 A Flutter plugin to detect the availability of the Google Play Services and Huawei HMS Services API on Android devices.

### Installing

To use this package, add `google_huawei_availability` as a dependency in your `pubspec.yaml` file.

### Usage

```dart

import 'package:google_huawei_availability/google_huawei_availability.dart';

bool isGoogle = await GoogleHuaweiAvailability.isGoogleServiceAvailable;

bool isHuawei = await GoogleHuaweiAvailability.isHuaweiServiceAvailable;

```
