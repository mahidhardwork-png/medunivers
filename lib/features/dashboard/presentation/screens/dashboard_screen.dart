import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/common_widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const AppHeader(title: 'Care Command Center'),
            const AppointmentCard(title: 'Dr. Sarah Chen · Cardiology', time: 'Today · 4:30 PM'),
            const SizedBox(height: 12),
            Wrap(spacing: 12, runSpacing: 12, children: [
              _ActionTile('Doctors', Icons.medical_services, ()=>context.go('/doctors')),
              _ActionTile('Appointments', Icons.calendar_month, ()=>context.go('/appointments')),
              _ActionTile('AI Assistant', Icons.smart_toy, ()=>context.go('/ai')),
              _ActionTile('Emergency SOS', Icons.emergency, ()=>context.go('/emergency')),
            ]),
            const SizedBox(height: 12),
            const MedicalCard(child: ListTile(title: Text('Nearby Hospitals'), subtitle: Text('Apollo | Fortis | Max Healthcare'))),
            const MedicalCard(child: ListTile(title: Text('Health Reports'), subtitle: Text('Latest bloodwork and diagnostics synced'))),
          ],
        ),
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile(this.title, this.icon, this.onTap);
  final String title; final IconData icon; final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => SizedBox(width: (MediaQuery.of(context).size.width - 44) / 2, child: InkWell(onTap: onTap, child: MedicalCard(child: Column(children:[Icon(icon,size:28),const SizedBox(height:8),Text(title)]))));
}
