import 'package:flutter_test/flutter_test.dart';
import 'package:introduction_screen/src/helper.dart';

void main() {
  // Global variables
  final originalList = [1, 2, 3, 4, 5];

  group('CustomList', () {
    test('asReversed() reverses list when isReverse is true', () {
      expect(originalList.asReversed(true), [5, 4, 3, 2, 1]);
    });

    test('asReversed() returns original list when isReverse is false', () {
      expect(originalList.asReversed(false), [1, 2, 3, 4, 5]);
    });

    test('elementAtOrNull returns the correct element for valid index', () {
      expect(originalList.elementAtOrNull(1), 2);
    });

    test('elementAtOrNull returns null for out of bounds index', () {
      expect(originalList.elementAtOrNull(5), isNull);
    });

    test('elementAtOrNull returns null for negative index', () {
      expect(originalList.elementAtOrNull(-1), isNull);
    });
  });
}
