import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:can_immo/generated/i18n/app_localizations.dart';
import 'package:can_immo/features/information/information_controller.dart';

/// Settings view that provides UI for modifying app settings
class InformationView extends GetView<InformationController> {
  const InformationView({super.key});

  static const routeName = '/information';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.informationLabel ?? 'Information',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[

          Text(
            AppLocalizations.of(context)?.stateLabel ?? 'State',
            style: Theme.of(context).textTheme.titleMedium,
          ),

          Card(
            child: ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              leading: Icon(Icons.password),
              title: Text(
                controller.isPinCode.value == true
                    ? AppLocalizations.of(context)!.pinLabelSet
                    : AppLocalizations.of(context)!.pinLabelUnset,
              ),
            ),
          ),

          Card(
            child: ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              leading: Icon(Icons.phone_android),
              title: Text(
                '${controller.pairPhonesNo} ${AppLocalizations.of(context)!.pairedPhonesLabel}',
              ),
              subtitle: Text('Of all: ${controller.pairAllNo} paired devices'),
            ),
          ),

          Card(
            child: ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              leading: Icon(Icons.ad_units),
              title: Text(
                '${controller.pairTransmittersNo} ${AppLocalizations.of(context)?.pairedTransmittersLabel}',
              ),
              subtitle: Text('Of all: ${controller.pairAllNo} paired devices'),
            ),
          ),

          const SizedBox(height: 32),

          // Advanced data
          Text(
            AppLocalizations.of(context)?.advancedLabel ?? 'Advanced',
            style: Theme.of(context).textTheme.titleMedium,
          ),

          _buildInformationListTile(
            context,
            leadingIcon: Icon(Icons.memory),
            title: controller.canBusNo.value,
            subtitle: AppLocalizations.of(context)!.canBusNoLabel,
          ),

          _buildInformationListTile(
            context,
            leadingIcon: Icon(Icons.memory),
            title: controller.canBusDate.value,
            subtitle: AppLocalizations.of(context)!.canBusDateLabel,
          ),

          _buildInformationListTile(
            context,
            leadingIcon: Icon(Icons.settings_remote),
            title: controller.canBusDeviceType.value,
            subtitle: AppLocalizations.of(context)!.canBusDeviceTypeLabel,
          ),

          _buildInformationListTile(
            context,
            leadingIcon: Icon(Icons.memory),
            title: controller.canBusCpuSerialNo.value,
            subtitle: AppLocalizations.of(context)!.canBusCpuSerialNoLabel,
          ),

          _buildInformationListTile(
            context,
            leadingIcon: Icon(Icons.bluetooth),
            title: controller.bleDeviceProgramNo.value,
            subtitle: AppLocalizations.of(context)!.bleDeviceProgramNoLabel,
          ),
        ],
      ),
    );
  }

  // Helper method to build a information list tile
  Widget _buildInformationListTile(
    BuildContext context, {
    required Icon leadingIcon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      iconColor: Theme.of(context).colorScheme.primary,
      leading: leadingIcon,
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(subtitle),
    );
  }
}
