import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/ui/animations/fade_slide_in.dart';
import '../../../../shared/widgets/ui_kit.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(16), children: [
          const AppHeader(title: 'Enterprise Care Operations', subtitle: 'Patient · Doctor · Admin Workflows'),
          FadeSlideIn(child: InfoCard(child: ListTile(title: const Text('Upcoming Appointments'), subtitle: const Text('12 active · 4 high priority'), trailing: TextButton(onPressed: ()=>context.go('/appointments'), child: const Text('View'))))),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _tile(context, 'Doctors', Icons.medical_services, '/doctors'),
              _tile(context, 'AI Assistant', Icons.psychology, '/ai'),
              _tile(context, 'Emergency', Icons.emergency, '/emergency'),
              _tile(context, 'Profile', Icons.account_circle, '/profile'),
            ],
          ),
          const SizedBox(height: 12),
          const InfoCard(child: ListTile(title: Text('Nearby Hospitals'), subtitle: Text('Apollo · Fortis · Medanta'))),
          const InfoCard(child: ListTile(title: Text('Health Reports'), subtitle: Text('Labs, radiology, discharge summaries'))),
        ]),
      ),
    );
  }

  Widget _tile(BuildContext context, String label, IconData icon, String route) {
    return InkWell(onTap: ()=>context.go(route), child: InfoCard(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(icon), const SizedBox(height: 8), Text(label)])));
  }
}
