import 'package:can_immo/widgets/wave_emitter.dart';
import 'package:flutter/material.dart';
import 'package:can_immo/generated/i18n/app_localizations.dart';
import 'package:can_immo/routes/app_pages.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.appTitle ?? 'Theme',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: const Center(child: WaveEmitter()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.restorablePushNamed(context, Routes.settings);
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}
