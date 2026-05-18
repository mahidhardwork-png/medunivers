import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../widgets/common_widgets.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
    const AppHeader(title: 'Verify identity'),
    const CustomTextField(hint: 'Enter 6-digit OTP'), const SizedBox(height: 16),
    PrimaryButton(label: 'Verify', onPressed: ()=> context.go('/dashboard')),
  ]))));
}
