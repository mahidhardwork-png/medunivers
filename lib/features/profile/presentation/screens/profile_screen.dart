import 'package:flutter/material.dart';
import '../../../../shared/widgets/ui_kit.dart';
class ProfileScreen extends StatelessWidget { const ProfileScreen({super.key}); @override Widget build(BuildContext context)=> const Scaffold(body: SafeArea(child: Padding(padding: EdgeInsets.all(16), child: InfoCard(child: Text('Role-aware profile, consent, insurance, compliance, and security controls.'))))); }
