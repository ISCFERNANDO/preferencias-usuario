import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/app.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenciasUsuario().initPrefs();
  runApp(MyApp());
}
