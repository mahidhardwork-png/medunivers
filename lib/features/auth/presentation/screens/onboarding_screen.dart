import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/common_widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Spacer(),
              Text('Connected Healthcare, Elevated.', style: Theme.of(context).textTheme.displaySmall),
              const SizedBox(height: 12),
              const Text('Unified care orchestration for patients, doctors, and hospitals.'),
              const Spacer(),
              PrimaryButton(label: 'Get Started', onPressed: () => context.go('/login')),
            ]),
          ),
        ),
      );
}
