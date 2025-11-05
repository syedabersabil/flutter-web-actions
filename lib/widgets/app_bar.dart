import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(
            Icons.flutter_dash,
            color: Theme.of(context).primaryColor,
            size: 32,
          ),
          const SizedBox(width: 12),
          const Text(
            'Flutter Web Actions',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text('Home'),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/about'),
          child: const Text('About'),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/contact'),
          child: const Text('Contact'),
        ),
        IconButton(
          icon: const Icon(Icons.brightness_6),
          onPressed: () {
            // Theme toggle would go here
          },
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}