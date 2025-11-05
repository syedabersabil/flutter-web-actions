import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(80),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.1),
            Theme.of(context).primaryColor.withOpacity(0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.rocket_launch,
            size: 120,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 32),
          Text(
            'Flutter Web with GitHub Actions',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            'Automated CI/CD pipeline for Flutter web applications',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                icon: const Icon(Icons.info),
                label: const Text('Learn More'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
              const SizedBox(width: 24),
              OutlinedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/contact'),
                icon: const Icon(Icons.contact_mail),
                label: const Text('Get in Touch'),
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}