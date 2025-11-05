import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/footer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'This Flutter web application demonstrates the power of GitHub Actions for continuous integration and deployment. Built with modern Flutter web technologies, it showcases responsive design, dark/light theme support, and automated deployment workflows.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Features:',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  const _FeatureItem(text: 'Responsive web design'),
                  const _FeatureItem(text: 'Dark and light theme support'),
                  const _FeatureItem(text: 'GitHub Actions CI/CD pipeline'),
                  const _FeatureItem(text: 'Automated web deployment'),
                  const _FeatureItem(text: 'Modern Material Design 3'),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String text;

  const _FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: Theme.of(context).primaryColor,
            size: 20,
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}