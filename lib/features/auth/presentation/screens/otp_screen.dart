import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/widgets/ui_kit.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
    const AppHeader(title: 'OTP verification', subtitle: 'MFA enforced for healthcare-grade account security'),
    AppButton(label: 'Verify & Enter', onPressed: ()=>context.go('/dashboard')),
  ]))));
}
