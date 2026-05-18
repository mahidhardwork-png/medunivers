import 'package:flutter/material.dart';
import '../../../../widgets/common_widgets.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: ListView(padding: const EdgeInsets.all(16), children: const [AppHeader(title: 'Appointments'), AppointmentCard(title: 'Neurology Follow-up', time: 'Tomorrow · 10:00 AM')])));
}
