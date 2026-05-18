import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/common_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();
    return Scaffold(body: SafeArea(child: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
      const AppHeader(title: 'Welcome back'),
      CustomTextField(hint: 'Work email', controller: email), const SizedBox(height: 12),
      CustomTextField(hint: 'Password', controller: pass, obscure: true), const SizedBox(height: 20),
      PrimaryButton(label: 'Sign in', onPressed: () => context.go('/otp')),
    ]))));
  }
}
