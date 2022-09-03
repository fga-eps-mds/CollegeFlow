import 'package:college_flow_app/core/service_locator_manager.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:college_flow_app/main.dart';
import 'package:flutter/material.dart';

Future<void> addDelay(int ms) async {
  await Future<void>.delayed(Duration(milliseconds: ms));
}

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  setUpAll(() async {
    await ServiceLocatorManager.I.init();
  });

  group("navigate to subject's list page", () {
    testWidgets('Onboarding testing - skip onboarding flow',
        (WidgetTester tester) async {
      await addDelay(1000);
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      await addDelay(1500);
      await tester.tap(
        find.byKey(const ValueKey('skipOnboardingButton')),
      );
      tester.printToConsole("Subject's list page opens");

      await tester.pumpAndSettle();
      await addDelay(1500);
      //Verify if we are redirected to the subject's list page
      expect(
        find.byKey(const ValueKey('listSubjectsHeader')),
        findsOneWidget,
      );

      //Go back to the onboarding flow
      await tester.tap(
        find.byKey(const ValueKey('subjectGoBackButton')),
      );
      await tester.pumpAndSettle();
      await addDelay(1500);
      expect(
        find.byKey(
          const ValueKey('OnboardingFirstStep'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('Onboarding testing - pass through onboarding flow',
        (WidgetTester tester) async {
      await addDelay(1000);
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      await addDelay(1500);
      await tester.drag(
        find.byKey(const ValueKey('OnboardingFirstStep')),
        const Offset(-500.0, 0.0),
      );
      tester.printToConsole('Onboarding Second Step opens');
      await tester.pumpAndSettle();

      await addDelay(1500);

      await tester.tap(
        find.byKey(const ValueKey('finishOnboardingButton')),
      );
      tester.printToConsole("Subject's list page opens");

      await tester.pumpAndSettle();

      await addDelay(1500);

      //Verify if we are redirected to the subject's list page
      expect(
        find.byKey(const ValueKey('listSubjectsHeader')),
        findsOneWidget,
      );
    });
    testWidgets('Search subject in subjectList', (WidgetTester tester) async {
      await addDelay(1000);
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      await addDelay(500);
      await tester.tap(
        find.byKey(const ValueKey('skipOnboardingButton')),
      );
      tester.printToConsole("Subject's list page opens");

      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const ValueKey('searchTextFieldInput')),
        'engenharia e ambiente',
      );
      await tester.pumpAndSettle();

      addDelay(2500);

      //Verify if we are redirected to the subject's list page
      expect(
        find.byKey(const ValueKey('ENGENHARIA E AMBIENTE')),
        findsOneWidget,
      );
    });
  });
}
