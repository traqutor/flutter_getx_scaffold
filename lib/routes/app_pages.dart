import 'package:can_immo/features/about.dart/about_view.dart';
import 'package:can_immo/features/drawer/drawer_view.dart';
import 'package:can_immo/features/information/information_binding.dart';
import 'package:can_immo/features/information/information_view.dart';
import 'package:can_immo/features/settings/settings_binding.dart';
import 'package:get/get.dart';
import 'package:can_immo/features/not_found/not_found_view.dart';
import 'package:can_immo/features/settings/settings_view.dart';
import 'package:can_immo/features/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(name: Routes.home, page: () => const HomeView()),

    GetPage(name: Routes.drawer, page: () => const DrawerView()),

    GetPage(
      name: Routes.information,
      page: () => const InformationView(),
      binding: InformationBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: Routes.settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: Routes.about,
      page: () => const About(),
      binding: SettingsBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(name: Routes.notFound, page: () => const NotFoundView()),
  ];
}
