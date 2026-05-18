import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) => SizedBox(width: double.infinity, child: FilledButton(onPressed: onPressed, child: Text(label)));
}
class AppTextField extends StatelessWidget {
  const AppTextField({super.key, required this.controller, required this.hint, this.obscure = false});
  final TextEditingController controller; final String hint; final bool obscure;
  @override
  Widget build(BuildContext context) => TextField(controller: controller, obscureText: obscure, decoration: InputDecoration(hintText: hint, border: OutlineInputBorder(borderRadius: BorderRadius.circular(14))));
}
class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.title, this.subtitle});
  final String title; final String? subtitle;
  @override
  Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(bottom: 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: Theme.of(context).textTheme.headlineSmall), if(subtitle!=null) Text(subtitle!)]));
}
class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) => Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), child: Padding(padding: const EdgeInsets.all(16), child: child));
}
