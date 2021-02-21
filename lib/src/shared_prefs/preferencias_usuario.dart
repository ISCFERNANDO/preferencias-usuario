import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instance = PreferenciasUsuario._();
  SharedPreferences _prefs;

  PreferenciasUsuario._();

  factory PreferenciasUsuario() {
    return _instance;
  }

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  int get gender {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar get gender');
    return _prefs.getInt('genero') ?? 1;
  }

  set gender(int value) {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar set gender');
    _prefs.setInt('genero', value);
  }

  bool get secondaryColor {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar get secondaryColor');
    return _prefs.getBool('secondaryColor') ?? true;
  }

  set secondaryColor(bool value) {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar set secondaryColor');
    _prefs.setBool('secondaryColor', value);
  }

  String get name {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar get name');
    return _prefs.getString('name') ?? '';
  }

  set name(String value) {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar set name');
    _prefs.setString('name', value);
  }

  String get lastPageRoute {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar get lastPageRoute');
    return _prefs.getString('lastPageRoute') ?? 'home';
  }

  set lastPageRoute(String value) {
    assert(_prefs != null,
        'El método initPrefs debe ser llamado antes de ocupar set lastPageRoute');
    _prefs.setString('lastPageRoute', value);
  }
}
