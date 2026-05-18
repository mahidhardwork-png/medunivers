import 'package:flutter/material.dart';
import '../../../../widgets/common_widgets.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: ListView(padding: const EdgeInsets.all(16), children: const [AppHeader(title: 'Emergency SOS'), MedicalCard(child: Text('One-tap SOS with live location, trusted contacts, and nearest ER routing.'))])));
}
