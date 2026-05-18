import 'package:flutter/material.dart';
import '../../../../widgets/common_widgets.dart';

class AiAssistantScreen extends StatelessWidget {
  const AiAssistantScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: ListView(padding: const EdgeInsets.all(16), children: const [AppHeader(title: 'AI Health Assistant'), MedicalCard(child: Text('Clinical triage co-pilot with evidence-based recommendations.'))])));
}
