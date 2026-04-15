import 'package:flutter_test/flutter_test.dart';

import 'package:jobconnect_app/main.dart';

void main() {
  testWidgets('App shell builds', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(MyApp), findsOneWidget);
  });
}
