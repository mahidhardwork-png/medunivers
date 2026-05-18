import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/widgets/ui_kit.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});
  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);
    return Scaffold(
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(24), children: [
          const AppHeader(title: 'Secure sign in'),
          AppTextField(controller: _email, hint: 'Email'),
          const SizedBox(height: 12),
          AppTextField(controller: _password, hint: 'Password', obscure: true),
          const SizedBox(height: 16),
          AppButton(
            label: state.isLoading ? 'Signing in...' : 'Continue',
            onPressed: () async {
              await ref.read(authNotifierProvider.notifier).signIn(_email.text.trim(), _password.text);
              if (mounted) context.go('/dashboard');
            },
          )
        ]),
      ),
    );
  }
}
