import 'package:fliper/components/widgets/modal_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('should display the image in modal screen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ModalContact()));
    var finder = find.byType(Image);
    expect(finder, findsOneWidget);
  });
}
