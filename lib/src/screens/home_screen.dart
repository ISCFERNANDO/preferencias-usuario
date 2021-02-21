import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widget/custom_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'home';
  final PreferenciasUsuario prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.lastPageRoute = routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: prefs.secondaryColor ? Colors.teal : Colors.blue,
      ),
      drawer: CustomDrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Colors secundario'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre de usuario'),
          Divider(),
        ],
      ),
    );
  }
}
