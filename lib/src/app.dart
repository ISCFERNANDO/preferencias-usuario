import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';

import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';

class MyApp extends StatelessWidget {
  final PreferenciasUsuario prefs = PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: prefs.lastPageRoute,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SettingsScreen.routeName: (_) => SettingsScreen(),
      },
    );
  }
}
