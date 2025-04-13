import 'dart:async';
import 'package:flutter/material.dart';
import 'package:can_immo/theme/colors.dart';
import 'package:can_immo/widgets/wave_circle.dart';
import 'package:can_immo/widgets/seo_icon.dart';

class WaveEmitter extends StatefulWidget {
  const WaveEmitter({super.key});

  @override
  State<WaveEmitter> createState() => _WaveEmitterState();
}

class _WaveEmitterState extends State<WaveEmitter> {
  List<Widget> waves = [];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        waves.add(const WaveCircle());
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ...waves,
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: SeoIcon(
            icon: 'seo_car_icon',
            color: useCurrentColor(context),
            size: 40,
          ),
        ),
      ],
    );
  }
}
