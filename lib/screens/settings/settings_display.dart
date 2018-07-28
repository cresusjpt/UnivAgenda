import 'package:flutter/material.dart';
import 'package:myagenda/screens/appbar_screen.dart';
import 'package:myagenda/translate/translations.dart';

class SettingsDisplayScreen extends StatefulWidget {
  @override
  _SettingsDisplayScreenState createState() =>
      new _SettingsDisplayScreenState();
}

class _SettingsDisplayScreenState extends State<SettingsDisplayScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppbarPage(
      title: Translations.of(context).get(Translate.SETTINGS_DISPLAY),
      body: Text("test"),
    );
  }
}