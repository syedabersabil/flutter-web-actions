import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(48),
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flutter_dash,
                color: Theme.of(context).primaryColor,
                size: 32,
              ),
              const SizedBox(width: 12),
              Text(
                'Flutter Web Actions',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Built with Flutter • Deployed with GitHub Actions',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.code),
                onPressed: () {},
                tooltip: 'View Source Code',
              ),
              IconButton(
                icon: const Icon(Icons.bug_report),
                onPressed: () {},
                tooltip: 'Report Issues',
              ),
              IconButton(
                icon: const Icon(Icons.help),
                onPressed: () {},
                tooltip: 'Documentation',
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            '© 2025 Flutter Web Actions. Made with ❤️',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}