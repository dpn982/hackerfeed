import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  SharedPreferences prefs;

  Future<void> loadSharedPreferences() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    prefs = await _prefs;
  }

  @override
  Widget build(BuildContext context) {
    loadSharedPreferences();

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(),
        ],
      ),
    );
  }
}