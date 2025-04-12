import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_scaffold/modules/settings/settings_controller.dart';
import 'package:flutter_getx_scaffold/generated/i18n/app_localizations.dart';

/// Settings view that provides UI for modifying app settings
/// Converted to use GetX architecture while maintaining compatibility
class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  // Optional: Keep route name for compatibility with existing code
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.settingsTitle ?? 'Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading for Theme section
            Text(
              AppLocalizations.of(context)?.themeSettingsTitle ?? 'Theme',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),

            // Theme options using Obx for reactivity
            Obx(
              () => Column(
                children: [
                  // System theme option
                  _buildThemeListTile(
                    context,
                    title:
                        AppLocalizations.of(context)?.themeSettingsSystem ??
                        'System Theme',
                    subtitle:
                        AppLocalizations.of(
                          context,
                        )?.themeSettingsSystemDescription ??
                        'Follows system settings',
                    value: ThemeMode.system,
                    selected: controller.themeMode == ThemeMode.system,
                    onChanged: (selected) {
                      if (selected) {
                        controller.updateThemeMode(ThemeMode.system);
                      }
                    },
                  ),

                  // Light theme option
                  _buildThemeListTile(
                    context,
                    title:
                        AppLocalizations.of(context)?.themeSettingsLight ??
                        'Light Theme',
                    subtitle:
                        AppLocalizations.of(
                          context,
                        )?.themeSettingsLightDescription ??
                        'Always use light theme',
                    value: ThemeMode.light,
                    selected: controller.themeMode == ThemeMode.light,
                    onChanged: (selected) {
                      if (selected) {
                        controller.updateThemeMode(ThemeMode.light);
                      }
                    },
                  ),

                  // Dark theme option
                  _buildThemeListTile(
                    context,
                    title:
                        AppLocalizations.of(context)?.themeSettingsDark ??
                        'Dark Theme',
                    subtitle:
                        AppLocalizations.of(
                          context,
                        )?.themeSettingsDarkDescription ??
                        'Always use dark theme',
                    value: ThemeMode.dark,
                    selected: controller.themeMode == ThemeMode.dark,
                    onChanged: (selected) {
                      if (selected) {
                        controller.updateThemeMode(ThemeMode.dark);
                      }
                    },
                  ),
                ],
              ),
            ),

            const Divider(height: 32),

            // Heading for Language section
            Text(
              AppLocalizations.of(context)?.languageSettingsTitle ?? 'Language',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),

            // Language options using Obx for reactivity
            Obx(
              () => Column(
                children: [
                  // English language option
                  _buildLanguageListTile(
                    context,
                    title: 'English',
                    value: 'en_US',
                    selected: controller.language == 'en_US',
                    onChanged: (selected) {
                      if (selected) {
                        controller.updateLanguage('en_US');
                      }
                    },
                  ),

                  // Polish language option
                  _buildLanguageListTile(
                    context,
                    title: 'Polski',
                    value: 'pl_PL',
                    selected: controller.language == 'pl_PL',
                    onChanged: (selected) {
                      if (selected) {
                        controller.updateLanguage('pl_PL');
                      }
                    },
                  ),

                  // Add more languages as needed
                ],
              ),
            ),

            const Divider(height: 32),

            // Notifications section (if you had this in your app)
            Text(
              AppLocalizations.of(context)?.notificationsTitle ??
                  'Notifications',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),

            // Notifications toggle using Obx for reactivity
            Obx(
              () => SwitchListTile(
                title: Text(
                  AppLocalizations.of(context)?.notificationsEnable ??
                      'Enable notifications',
                ),
                value: controller.notificationsEnabled,
                onChanged: (value) {
                  controller.updateNotifications(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a theme option list tile
  Widget _buildThemeListTile(
    BuildContext context, {
    required String title,
    required String subtitle,
    required ThemeMode value,
    required bool selected,
    required ValueChanged<bool> onChanged,
  }) {
    return RadioListTile<ThemeMode>(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      groupValue: selected ? value : null,
      onChanged: (ThemeMode? newValue) {
        if (newValue != null) {
          onChanged(true);
        }
      },
      selected: selected,
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }

  // Helper method to build a language option list tile
  Widget _buildLanguageListTile(
    BuildContext context, {
    required String title,
    required String value,
    required bool selected,
    required ValueChanged<bool> onChanged,
  }) {
    return RadioListTile<String>(
      title: Text(title),
      value: value,
      groupValue: selected ? value : null,
      onChanged: (String? newValue) {
        if (newValue != null) {
          onChanged(true);
        }
      },
      selected: selected,
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }
}
