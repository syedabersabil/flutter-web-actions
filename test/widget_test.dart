import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_web_actions/main.dart';

void main() {
  group('Flutter Web Actions App Tests', () {
    testWidgets('App builds and displays home page', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Verify that the home page is displayed
      expect(find.text('Flutter Web with GitHub Actions'), findsOneWidget);
      expect(find.text('Automated CI/CD pipeline for Flutter web applications'), findsOneWidget);
      expect(find.byIcon(Icons.rocket_launch), findsOneWidget);
    });

    testWidgets('Navigation works correctly', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Test navigation to About page
      await tester.tap(find.text('About'));
      await tester.pumpAndSettle();
      expect(find.text('About Us'), findsOneWidget);

      // Test navigation to Contact page
      await tester.tap(find.text('Contact'));
      await tester.pumpAndSettle();
      expect(find.text('Contact Us'), findsOneWidget);

      // Test navigation back to Home
      await tester.tap(find.text('Home'));
      await tester.pumpAndSettle();
      expect(find.text('Flutter Web with GitHub Actions'), findsOneWidget);
    });

    testWidgets('Contact form validation works', (WidgetTester tester) async {
      // Build the app and navigate to contact page
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      await tester.tap(find.text('Contact'));
      await tester.pumpAndSettle();

      // Try to submit empty form
      await tester.tap(find.text('Send Message'));
      await tester.pumpAndSettle();

      // Check validation messages appear
      expect(find.text('Please enter your name'), findsOneWidget);
      expect(find.text('Please enter your email'), findsOneWidget);
      expect(find.text('Please enter your message'), findsOneWidget);
    });

    testWidgets('Contact form accepts valid input', (WidgetTester tester) async {
      // Build the app and navigate to contact page
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      await tester.tap(find.text('Contact'));
      await tester.pumpAndSettle();

      // Fill out the form
      await tester.enterText(find.byType(TextFormField).at(0), 'John Doe');
      await tester.enterText(find.byType(TextFormField).at(1), 'john@example.com');
      await tester.enterText(find.byType(TextFormField).at(2), 'This is a test message');

      // Submit the form
      await tester.tap(find.text('Send Message'));
      await tester.pumpAndSettle();

      // Check success message appears
      expect(find.text('Thanks for your message! We\'ll get back to you soon.'), findsOneWidget);
    });

    testWidgets('App bar displays correctly', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Check app bar elements
      expect(find.text('Flutter Web Actions'), findsOneWidget);
      expect(find.byIcon(Icons.flutter_dash), findsOneWidget);
      expect(find.text('Home'), findsOneWidget);
      expect(find.text('About'), findsOneWidget);
      expect(find.text('Contact'), findsOneWidget);
    });

    testWidgets('Features section displays correctly', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Check features section
      expect(find.text('Key Features'), findsOneWidget);
      expect(find.text('Responsive Design'), findsOneWidget);
      expect(find.text('GitHub Actions'), findsOneWidget);
      expect(find.text('Material Design 3'), findsOneWidget);
      expect(find.text('Fast Performance'), findsOneWidget);
    });
  });
}