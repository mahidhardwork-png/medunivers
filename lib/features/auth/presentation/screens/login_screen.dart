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
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const AppHeader(
                title: 'Welcome to MedUniverse',
                subtitle: 'Secure enterprise access for healthcare operations',
              ),
              AppTextField(controller: _emailController, hint: 'Work email'),
              const SizedBox(height: 12),
              AppTextField(controller: _passwordController, hint: 'Password', obscure: true),
              const SizedBox(height: 16),
              if (auth.error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(auth.error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                ),
              AppButton(
                label: auth.isLoading ? 'Signing in...' : 'Sign in',
                onPressed: auth.isLoading
                    ? () {}
                    : () async {
                        final ok = await ref
                            .read(authNotifierProvider.notifier)
                            .signIn(_emailController.text.trim(), _passwordController.text);
                        if (ok && mounted) context.go('/otp');
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
