import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_getx_scaffold/modules/settings/settings_controller.dart';
import 'package:flutter_getx_scaffold/generated/i18n/app_localizations.dart';
import 'package:flutter_getx_scaffold/routes/app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (controller) {
        return GetMaterialApp(
          title: 'GetX App',
          debugShowCheckedModeBanner: false,
          themeMode: controller.themeMode.value,
          locale: _parseLocale(controller.language.value),
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),

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
    super.didPop(route, previousRoute);
    // Cancel the subscription when the route is popped
    print('cancel subscriptions');
  }
}
