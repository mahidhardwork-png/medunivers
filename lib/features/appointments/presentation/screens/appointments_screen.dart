import 'package:flutter/material.dart';
import '../../../../shared/widgets/ui_kit.dart';
class AppointmentsScreen extends StatelessWidget { const AppointmentsScreen({super.key}); @override Widget build(BuildContext context)=> const Scaffold(body: SafeArea(child: Padding(padding: EdgeInsets.all(16), child: InfoCard(child: Text('Appointment orchestration with slots, queues, reminders, and teleconsult integration.'))))); }
