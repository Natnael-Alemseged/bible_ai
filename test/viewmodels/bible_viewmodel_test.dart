import 'package:flutter_test/flutter_test.dart';
import 'package:bible_ai/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('BibleViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
