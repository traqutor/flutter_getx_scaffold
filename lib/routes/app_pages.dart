import 'package:get/get.dart';
import 'package:flutter_getx_scaffold/modules/not_found/not_found_view.dart';
import 'package:flutter_getx_scaffold/modules/settings/settings_view.dart';
import 'package:flutter_getx_scaffold/modules/home/home_binding.dart';
import 'package:flutter_getx_scaffold/modules/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(name: '/', page: () => const HomeView(), binding: HomeBinding()),

    GetPage(
      name: Routes.settings,
      page: () => const SettingsView(),
      transition: Transition.rightToLeft,
    ),

    GetPage(name: Routes.notFound, page: () => const NotFoundView()),
  ];
}
