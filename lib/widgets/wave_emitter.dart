import 'dart:async';
import 'package:can_immo/features/home/home_controller.dart';
import 'package:get/get.dart';
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
  final HomeController controller = Get.find<HomeController>();
  List<Widget> waves = [];
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    ever(controller.isEmitting, (bool emitting) {
      if (emitting) {
        _startTimer();
      } else {
        _stopTimer();
      }
    });

    if (controller.isEmitting.value) {
      _startTimer();
    }
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        waves.add(const WaveCircle());
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    _stopTimer();
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
            icon: 'car_icon',
            color: useCurrentColor(context),
            size: 10,
          ),
        ),
      ],
    );
  }
}
