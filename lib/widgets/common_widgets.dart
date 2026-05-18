import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) => SizedBox(width: double.infinity, child: FilledButton(onPressed: onPressed, child: Text(label)));
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.obscure = false, this.controller});
  final String hint;
  final bool obscure;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) => TextField(controller: controller, obscureText: obscure, decoration: InputDecoration(hintText: hint, border: OutlineInputBorder(borderRadius: BorderRadius.circular(14))));
}

class MedicalCard extends StatelessWidget {
  const MedicalCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) => Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), child: Padding(padding: const EdgeInsets.all(16), child: child));
}

class LoadingIndicator extends StatelessWidget { const LoadingIndicator({super.key}); @override Widget build(BuildContext c)=> const Center(child:CircularProgressIndicator()); }
class AppHeader extends StatelessWidget { const AppHeader({super.key, required this.title}); final String title; @override Widget build(BuildContext c)=> Padding(padding:const EdgeInsets.fromLTRB(16,16,16,8),child:Text(title,style:Theme.of(c).textTheme.titleLarge)); }
class AppointmentCard extends StatelessWidget { const AppointmentCard({super.key, required this.title, required this.time}); final String title; final String time; @override Widget build(BuildContext c)=> MedicalCard(child:ListTile(title:Text(title),subtitle:Text(time),trailing: const Icon(Icons.chevron_right))); }
