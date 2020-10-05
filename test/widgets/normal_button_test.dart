import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recorder/widgets/normal_button.dart';

void main() {
  dummfyFunction() {
    print('Test function called');
  }

  group('Button Tests', () {
    test('Button is disabled', () async {
      // Create the widget by telling the tester to build it.
      final testButton = NormalButton(
        isActive: true,
        onPress: dummfyFunction,
      );

      expect(testButton.isEnabled(), false);
    });

    test('Button is enabled', () async {
      // Create the widget by telling the tester to build it.
      final testButton = NormalButton(
        isActive: false,
        onPress: dummfyFunction,
      );

      expect(testButton.isEnabled(), true);
    });
  });
}
