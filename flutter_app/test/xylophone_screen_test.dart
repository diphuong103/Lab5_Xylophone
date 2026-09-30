import 'package:flutter_test/flutter_test.dart';
import 'package:lab5_xylophone/main.dart';

void main() {
  testWidgets('shows all seven playable notes', (tester) async {
    await tester.pumpWidget(const XylophoneApp());

    for (final note in ['C', 'D', 'E', 'F', 'G', 'A', 'B']) {
      expect(find.text(note), findsOneWidget);
    }
    expect(find.text('Make some music'), findsOneWidget);
  });
}
