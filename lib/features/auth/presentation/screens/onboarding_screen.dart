import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/ui/animations/fade_slide_in.dart';
import '../../../../shared/widgets/ui_kit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: Padding(
    padding: const EdgeInsets.all(24),
    child: FadeSlideIn(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Spacer(),
      Text('Healthcare OS for the next billion users', style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: 12),
      const Text('Orchestrate care delivery, digital triage, and infrastructure workflows in one secure platform.'),
      const Spacer(),
      AppButton(label: 'Continue', onPressed: ()=>context.go('/login')),
    ])),
  )));
}
