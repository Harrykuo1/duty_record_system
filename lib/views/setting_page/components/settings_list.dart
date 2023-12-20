import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

import 'package:duty_record_system/style/colors.dart';
import 'package:duty_record_system/controller/setting_controller.dart';

class SettingList extends StatefulWidget {


  @override
  State<SettingList> createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  @override
  Widget build(BuildContext context) {
    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.language),
              title: Text('Language'),
              value: Text('繁體中文'),
            ),
            SettingsTile.navigation(
              title: Text("檢查更新"),
            ),
            SettingsTile.navigation(
              title: Text("關於本軟體"),
            ),
          ],
        ),
      ],
    );
  }
}