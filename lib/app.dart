import 'package:can_immo/theme/seo_theme.dart';
import 'package:flutter/material.dart';
import 'package:can_immo/core/dependency_injection.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:can_immo/features/settings/settings_controller.dart';
import 'package:can_immo/generated/i18n/app_localizations.dart';
import 'package:can_immo/routes/app_pages.dart';
import 'package:can_immo/theme/seo_text_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Lato", "Lato");
    MaterialTheme theme = MaterialTheme(textTheme);

    return GetBuilder<SettingsController>(
      builder: (controller) {
        return GetMaterialApp(
          title: 'SEO CAN Immobilizer',
          debugShowCheckedModeBanner: false,
          themeMode: controller.themeMode.value,
          locale: _parseLocale(controller.language.value),
          theme: theme.light(),
          darkTheme: theme.dark(),

          fallbackLocale: const Locale('en', 'US'),

          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,

          // Routes
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
        );
      },
    );
  }

  Locale _parseLocale(String code) {
    final parts = code.split('_');
    return Locale(parts[0], parts.length > 1 ? parts[1] : '');
  }
}

/// Your existing custom observer for Bluetooth state
class CustomAdapterStateObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name == '/') {
      // Start listening to Custom Module state changes when a new route is pushed
      // Pop the current route if Custom Module is off
      navigator?.pop();
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    final log = Get.find<LoggerService>();
    super.didPop(route, previousRoute);
    // Cancel the subscription when the route is popped
    log.info('cancel subscriptions');
  }
}
