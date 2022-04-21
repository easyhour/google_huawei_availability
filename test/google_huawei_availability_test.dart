import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_huawei_availability/google_huawei_availability.dart';

void main() {
  const MethodChannel channel = MethodChannel('google_huawei_availability');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('checkService', () async {
    //expect(await GoogleHuaweiAvailability.isGoogleServiceAvailable, true);
  });
}
