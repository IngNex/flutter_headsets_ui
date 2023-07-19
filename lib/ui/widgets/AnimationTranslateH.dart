import 'package:flutter/material.dart';

class AnimationTranslateH extends StatelessWidget {
  const AnimationTranslateH({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 800),
    this.offset = 120.0,
    this.curve = Curves.easeInOutBack,
    this.left = true,
  }) : super(key: key);

  final Widget child;
  final Duration duration;
  final double offset;
  final Curve curve;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 1.0, end: 0.0),
      child: child,
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(
          offset: left ? Offset(offset * value, 0) : Offset(-offset * value, 0),
          child: child,
        );
      },
    );
  }
}
