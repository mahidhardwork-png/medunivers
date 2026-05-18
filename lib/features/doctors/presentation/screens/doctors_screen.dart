import 'package:flutter/material.dart';
import '../../../../shared/widgets/ui_kit.dart';
class DoctorsScreen extends StatelessWidget { const DoctorsScreen({super.key}); @override Widget build(BuildContext context)=> const Scaffold(body: SafeArea(child: Padding(padding: EdgeInsets.all(16), child: InfoCard(child: Text('Doctor network, credentialing, specialties, availability, and clinical ratings.'))))); }
