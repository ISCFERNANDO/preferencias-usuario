import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';

import 'package:preferencias_usuario/src/widget/custom_drawer_widget.dart';

class SettingsScreen extends StatefulWidget {
  static final String routeName = 'settings';
  const SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _secondaryColor = true;
  int _gender;
  String _name;
  TextEditingController _textController;
  PreferenciasUsuario prefs = PreferenciasUsuario();

  @override
  void initState() {
    super.initState();
    _gender = prefs.gender;
    _secondaryColor = prefs.secondaryColor;
    _name = prefs.name;
    _textController = TextEditingController(text: _name);
  }

  @override
  Widget build(BuildContext context) {
    prefs.lastPageRoute = SettingsScreen.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: prefs.secondaryColor ? Colors.teal : Colors.blue,
      ),
      drawer: CustomDrawerWidget(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _secondaryColor,
            title: Text('Color secundario'),
            onChanged: _setSecondaryColor,
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _gender,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _gender,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona',
              ),
              onChanged: _setName,
            ),
          ),
        ],
      ),
    );
  }

  _setSecondaryColor(bool value) {
    _secondaryColor = value;
    setState(() {});
    prefs.secondaryColor = value;
  }

  _setSelectedRadio(int value) {
    _gender = value;
    setState(() {});
    prefs.gender = value;
  }

  _setName(String value) {
    _name = value;
    setState(() {});
    prefs.name = value;
  }
}
