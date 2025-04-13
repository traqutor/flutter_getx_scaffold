import 'package:flutter/material.dart';
import 'package:can_immo/theme/colors.dart';

class WaveCircle extends StatefulWidget {
  const WaveCircle({super.key});

  @override
  State<WaveCircle> createState() => _WaveCircleState();
}

class _WaveCircleState extends State<WaveCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _controller.forward().whenComplete(() => setState(() {}));
  }

  

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: 1.0 - _controller.value,
          child: Container(
            width: 20 + _controller.value * 300,
            height: 20 + _controller.value * 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: useCurrentColor(context)),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
