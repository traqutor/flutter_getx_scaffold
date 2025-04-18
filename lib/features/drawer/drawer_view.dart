import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:can_immo/generated/i18n/app_localizations.dart';
import 'package:can_immo/features/settings/settings_controller.dart';
import 'package:can_immo/routes/app_pages.dart';

/// Settings view that provides UI for modifying app settings
class DrawerView extends GetView<SettingsController> {
  const DrawerView({super.key});

  static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.appTitle ?? 'System'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Obx(() {
            return SwitchListTile(
              title: Text(
                controller.isEmitting.value
                    ? (AppLocalizations.of(context)?.connectionStateActive ??
                        'Active')
                    : (AppLocalizations.of(context)?.connectionStateDisabled ??
                        'Disabled'),
              ),
              value: controller.isEmitting.value,
              onChanged: (value) => controller.toggleEmitting(),
            );
          }),

          const Divider(height: 32),

          GestureDetector(
            onTap: () {
              Navigator.restorablePushNamed(context, Routes.information);
            },
            child: Card(
              child: ListTile(
                iconColor: Theme.of(context).colorScheme.primary,
                leading: Icon(Icons.info),
                title: Text(
                  AppLocalizations.of(context)?.informationLabel ??
                      'Information',
                ),
                subtitle: Text(
                  '${AppLocalizations.of(context)?.pairedDevicesNumberLabel ??
                      'Number of paired Devices'} ${controller.numberPairedDevices}/8',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.restorablePushNamed(context, Routes.settings);
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  AppLocalizations.of(context)?.settingsLabel ?? 'Settings',
                ),
                subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.restorablePushNamed(context, Routes.about);
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text(
                  AppLocalizations.of(context)?.aboutLabel ?? 'About',
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
