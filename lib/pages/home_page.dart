import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/features_section.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            FeaturesSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}