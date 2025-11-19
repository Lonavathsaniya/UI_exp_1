import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exp_3/main.dart';  // <-- CHANGE THIS

void main() {
  group("Experiment 3: Responsive UI Testing", () {
    
    testWidgets("App loads and Scaffold is present", (tester) async {
      await tester.pumpWidget(Experiment3());
      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets("Displays Mobile View text for small screens", (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800)); // Simulate mobile screen
      await tester.pumpWidget(Experiment3());

      expect(find.textContaining("Mobile View"), findsOneWidget);
    });

    testWidgets("Displays Tablet View text for larger screens", (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 1200)); // Simulate tablet screen
      await tester.pumpWidget(Experiment3());

      expect(find.textContaining("Tablet View"), findsOneWidget);
    });

    testWidgets("MediaQuery value affects UI", (tester) async {
      const width = 500.0;
      await tester.binding.setSurfaceSize(const Size(width, 800));
      await tester.pumpWidget(Experiment3());

      // Should show mobile since width < 600
      expect(find.textContaining("Mobile View"), findsOneWidget);
    });

  });
}
