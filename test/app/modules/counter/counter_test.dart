import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/app/modules/counter/counter.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });
    test('Counter value should be incremented', () {
      final counter = Counter();
      counter.increment();

      expect(counter.value, 1);
    });

    test('Counter should not be negative', () {
      final counter = Counter();
      counter.decrement();

      expect(counter.value, 0);
    });
  });
}
