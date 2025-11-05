import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(80),
      child: Column(
        children: [
          Text(
            'Key Features',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
          ),
          const SizedBox(height: 64),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1200) {
                return Row(
                  children: _buildFeatureCards(context)
                      .map((card) => Expanded(child: card))
                      .toList(),
                );
              } else if (constraints.maxWidth > 800) {
                return Column(
                  children: [
                    Row(
                      children: _buildFeatureCards(context)
                          .take(2)
                          .map((card) => Expanded(child: card))
                          .toList(),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: _buildFeatureCards(context)
                          .skip(2)
                          .map((card) => Expanded(child: card))
                          .toList(),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: _buildFeatureCards(context),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFeatureCards(BuildContext context) {
    final features = [
      {
        'icon': Icons.web,
        'title': 'Responsive Design',
        'description': 'Works seamlessly across all devices and screen sizes',
      },
      {
        'icon': Icons.build,
        'title': 'GitHub Actions',
        'description': 'Automated building and deployment with every commit',
      },
      {
        'icon': Icons.palette,
        'title': 'Material Design 3',
        'description': 'Modern UI with dark and light theme support',
      },
      {
        'icon': Icons.speed,
        'title': 'Fast Performance',
        'description': 'Optimized for web with fast loading times',
      },
    ];

    return features
        .map((feature) => Container(
              margin: const EdgeInsets.all(16),
              child: Card(
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.all(32),
                  height: 240,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        feature['icon'] as IconData,
                        size: 64,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        feature['title'] as String,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        feature['description'] as String,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }
}