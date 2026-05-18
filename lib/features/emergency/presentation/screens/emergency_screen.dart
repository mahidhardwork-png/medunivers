import 'package:flutter/material.dart';
import '../../../../shared/widgets/ui_kit.dart';
class EmergencyScreen extends StatelessWidget { const EmergencyScreen({super.key}); @override Widget build(BuildContext context)=> const Scaffold(body: SafeArea(child: Padding(padding: EdgeInsets.all(16), child: InfoCard(child: Text('Emergency SOS with incident escalation, caregiver broadcast, and nearest ER routing.'))))); }
