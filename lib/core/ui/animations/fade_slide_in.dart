import 'package:flutter/material.dart';

class FadeSlideIn extends StatelessWidget {
  const FadeSlideIn({super.key, required this.child, this.delay = Duration.zero});
  final Widget child;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 20, end: 0),
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeOutCubic,
      builder: (_, offset, c) => AnimatedOpacity(
        opacity: offset == 0 ? 1 : 0,
        duration: const Duration(milliseconds: 350),
        child: Transform.translate(offset: Offset(0, offset), child: c),
      ),
      child: child,
    );
  }
}
