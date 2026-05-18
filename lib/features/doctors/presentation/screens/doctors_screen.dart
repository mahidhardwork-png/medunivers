import 'package:flutter/material.dart';
import '../../../../widgets/common_widgets.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: ListView(padding: const EdgeInsets.all(16), children: const [AppHeader(title: 'Doctors'), MedicalCard(child: Text('Find specialists by domain, rating, and clinical outcomes.'))])));
}
