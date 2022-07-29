import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _PreCodifBon = prefs.getString('ff_PreCodifBon') ?? _PreCodifBon;
    _NbreDeBon = prefs.getStringList('ff_NbreDeBon') ?? _NbreDeBon;
    _ListeDeTemps = prefs.getStringList('ff_ListeDeTemps') ?? _ListeDeTemps;
    _logo = prefs.getString('ff_logo') ?? _logo;
  }

  SharedPreferences prefs;

  String CodifBon = '\"\"';

  double AddQty = 0.0;

  String DateEnAttente = '';

  String DateEnvoye = '';

  double montant = 0.0;

  String _PreCodifBon = '';
  String get PreCodifBon => _PreCodifBon;
  set PreCodifBon(String _value) {
    _PreCodifBon = _value;
    prefs.setString('ff_PreCodifBon', _value);
  }

  String PreDateEnAttente = '\"\"';

  String PreDateEnvoye = '\"\"';

  List<String> _NbreDeBon = [];
  List<String> get NbreDeBon => _NbreDeBon;
  set NbreDeBon(List<String> _value) {
    _NbreDeBon = _value;
    prefs.setStringList('ff_NbreDeBon', _value);
  }

  void addToNbreDeBon(String _value) {
    _NbreDeBon.add(_value);
    prefs.setStringList('ff_NbreDeBon', _NbreDeBon);
  }

  void removeFromNbreDeBon(String _value) {
    _NbreDeBon.remove(_value);
    prefs.setStringList('ff_NbreDeBon', _NbreDeBon);
  }

  List<String> _ListeDeTemps = [];
  List<String> get ListeDeTemps => _ListeDeTemps;
  set ListeDeTemps(List<String> _value) {
    _ListeDeTemps = _value;
    prefs.setStringList('ff_ListeDeTemps', _value);
  }

  void addToListeDeTemps(String _value) {
    _ListeDeTemps.add(_value);
    prefs.setStringList('ff_ListeDeTemps', _ListeDeTemps);
  }

  void removeFromListeDeTemps(String _value) {
    _ListeDeTemps.remove(_value);
    prefs.setStringList('ff_ListeDeTemps', _ListeDeTemps);
  }

  String CodifArt = '';

  String PreCodifArt = '';

  bool consommes = false;

  DateTime DateFiltre;

  String urlpdf = '';

  dynamic jsonpdf;

  String _logo;
  String get logo => _logo;
  set logo(String _value) {
    _logo = _value;
    prefs.setString('ff_logo', _value);
  }

  bool fil31 = false;

  bool fil32 = false;

  bool fil33 = false;

  bool fil21 = false;

  bool fil22 = false;

  bool fil11 = false;

  bool fil12 = false;

  String UpdateScan = '';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
