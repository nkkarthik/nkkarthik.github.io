import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

// https://pub.dev/packages/test

void main() {
  group('Pages App', () {
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      expect(await driver.getText(counterTextFinder), "0");
    });

  });

//  test('String.split() splits the string on the delimiter', () {
//    expect('foo,bar,baz'.split(','), equals(['foo', 'bar', 'baz']));
//  });
}
