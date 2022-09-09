import 'package:college_flow_app/core/service_locator_manager.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:college_flow_app/main.dart';
import 'package:flutter/material.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  setUpAll(() async {
    await ServiceLocatorManager.I.init();
  });

  group("end to end test", () {
    testWidgets('end to end test', (WidgetTester tester) async {
      const subjectName = 'Teste';
      await addDelay(1000);
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      await _skipOnboardingFLow(tester);
      await _searchSubject(tester, subjectName);
      await _navigateToReviewList(tester, subjectName);
      await _createReview(tester, subjectName);
      await _goBackToOnboarding(tester);
      await _dragOnboardingFlow(tester);
    });
  });
}

Future<void> addDelay(int ms) async {
  await Future<void>.delayed(Duration(milliseconds: ms));
}

Future<void> _skipOnboardingFLow(WidgetTester tester) async {
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
}

Future<void> _searchSubject(WidgetTester tester, String subject) async {
  await tester.enterText(
    find.byKey(const ValueKey('searchTextFieldInput')),
    subject,
  );
  await tester.pumpAndSettle();

  await addDelay(1500);

  //Verify if has the result we want
  expect(
    find.byKey(ValueKey(subject)),
    findsOneWidget,
  );
}

Future<void> _navigateToReviewList(
  WidgetTester tester,
  String subjectName,
) async {
  await tester.tap(
    find.byKey(ValueKey(subjectName)),
  );
  await tester.pumpAndSettle();
  await addDelay(4000);
  expect(find.byKey(ValueKey('${subjectName}CardText')), findsOneWidget);
}

Future<void> _createReview(
  WidgetTester tester,
  String subjectName,
) async {
  await tester.tap(
    find.byKey(const ValueKey('CreateReviewButton')),
  );
  await tester.pumpAndSettle();
  await addDelay(1500);
  await tester.enterText(
      find.byKey(const ValueKey('ProfessorTextField')), 'Professor Test');
  await tester.pumpAndSettle();
  await tester.enterText(
      find.byKey(const ValueKey('TitleTextField')), 'Title test');
  await tester.pumpAndSettle();
  await tester.enterText(
      find.byKey(const ValueKey('DescriptionTextField')), 'Title test');
  await tester.pumpAndSettle();
  await addDelay(1500);
  await tester.tap(
    find.byKey(const ValueKey('SendReviewButton')),
  );
  await tester.pumpAndSettle();
  await addDelay(1500);
  await tester.tap(
    find.byKey(const ValueKey('ConfirmCreateReviewButton')),
  );
  await tester.pumpAndSettle();
  await addDelay(1500);
  expect(find.byKey(ValueKey('${subjectName}CardText')), findsOneWidget);
}

Future<void> _goBackToOnboarding(WidgetTester tester) async {
  await tester.tap(
    find.byKey(const ValueKey('subjectReviewListGoBack')),
  );
  await tester.pumpAndSettle();
  await addDelay(1500);
  await tester.tap(
    find.byKey(const ValueKey('subjectGoBackButton')),
  );
  await tester.pumpAndSettle();
  await addDelay(1500);
}

Future<void> _dragOnboardingFlow(WidgetTester tester) async {
  await tester.drag(
    find.byKey(const ValueKey('OnboardingFirstStep')),
    const Offset(-500.0, 0.0),
  );
  await tester.pumpAndSettle();
  await addDelay(1500);
  expect(find.byKey(const ValueKey('OnboardingSecondStep')), findsOneWidget);
}
