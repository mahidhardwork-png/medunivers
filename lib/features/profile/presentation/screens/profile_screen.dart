import 'package:flutter/material.dart';
import '../../../../widgets/common_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: ListView(padding: const EdgeInsets.all(16), children: const [AppHeader(title: 'Profile'), MedicalCard(child: Text('Identity, insurance, consent, and security settings.'))])));
}
