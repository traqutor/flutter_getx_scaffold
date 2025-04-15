import 'package:can_immo/widgets/wave_emitter.dart';
import 'package:flutter/material.dart';
import 'package:can_immo/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(),
        child: const Center(child: WaveEmitter()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.restorablePushNamed(context, Routes.drawer);
        },
        child: const Icon(Icons.input),
      ),
    );
  }
}
