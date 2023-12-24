import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Favorite = prefs
              .getStringList('ff_Favorite')
              ?.map((path) => path.ref)
              .toList() ??
          _Favorite;
    });
    _safeInit(() {
      _Searchonof = prefs.getBool('ff_Searchonof') ?? _Searchonof;
    });
    _safeInit(() {
      _totalcosts = prefs.getDouble('ff_totalcosts') ?? _totalcosts;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _answer1 = false;
  bool get answer1 => _answer1;
  set answer1(bool _value) {
    _answer1 = _value;
  }

  bool _answer2 = false;
  bool get answer2 => _answer2;
  set answer2(bool _value) {
    _answer2 = _value;
  }

  bool _answer3 = false;
  bool get answer3 => _answer3;
  set answer3(bool _value) {
    _answer3 = _value;
  }

  bool _answer4 = false;
  bool get answer4 => _answer4;
  set answer4(bool _value) {
    _answer4 = _value;
  }

  List<DocumentReference> _Favorite = [];
  List<DocumentReference> get Favorite => _Favorite;
  set Favorite(List<DocumentReference> _value) {
    _Favorite = _value;
    prefs.setStringList('ff_Favorite', _value.map((x) => x.path).toList());
  }

  void addToFavorite(DocumentReference _value) {
    _Favorite.add(_value);
    prefs.setStringList('ff_Favorite', _Favorite.map((x) => x.path).toList());
  }

  void removeFromFavorite(DocumentReference _value) {
    _Favorite.remove(_value);
    prefs.setStringList('ff_Favorite', _Favorite.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavorite(int _index) {
    _Favorite.removeAt(_index);
    prefs.setStringList('ff_Favorite', _Favorite.map((x) => x.path).toList());
  }

  void updateFavoriteAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _Favorite[_index] = updateFn(_Favorite[_index]);
    prefs.setStringList('ff_Favorite', _Favorite.map((x) => x.path).toList());
  }

  void insertAtIndexInFavorite(int _index, DocumentReference _value) {
    _Favorite.insert(_index, _value);
    prefs.setStringList('ff_Favorite', _Favorite.map((x) => x.path).toList());
  }

  bool _Searchonof = false;
  bool get Searchonof => _Searchonof;
  set Searchonof(bool _value) {
    _Searchonof = _value;
    prefs.setBool('ff_Searchonof', _value);
  }

  String _Search = '';
  String get Search => _Search;
  set Search(String _value) {
    _Search = _value;
  }

  double _totalcost = 0.0;
  double get totalcost => _totalcost;
  set totalcost(double _value) {
    _totalcost = _value;
  }

  double _subtotal = 0.0;
  double get subtotal => _subtotal;
  set subtotal(double _value) {
    _subtotal = _value;
  }

  DateTime? _enddate = DateTime.fromMillisecondsSinceEpoch(1698322140000);
  DateTime? get enddate => _enddate;
  set enddate(DateTime? _value) {
    _enddate = _value;
  }

  DateTime? _startdate = DateTime.fromMillisecondsSinceEpoch(1698322140000);
  DateTime? get startdate => _startdate;
  set startdate(DateTime? _value) {
    _startdate = _value;
  }

  bool _answer5 = false;
  bool get answer5 => _answer5;
  set answer5(bool _value) {
    _answer5 = _value;
  }

  bool _answer6 = false;
  bool get answer6 => _answer6;
  set answer6(bool _value) {
    _answer6 = _value;
  }

  bool _answer7 = false;
  bool get answer7 => _answer7;
  set answer7(bool _value) {
    _answer7 = _value;
  }

  bool _answer8 = false;
  bool get answer8 => _answer8;
  set answer8(bool _value) {
    _answer8 = _value;
  }

  bool _answer9 = false;
  bool get answer9 => _answer9;
  set answer9(bool _value) {
    _answer9 = _value;
  }

  double _totalcosts = 0.0;
  double get totalcosts => _totalcosts;
  set totalcosts(double _value) {
    _totalcosts = _value;
    prefs.setDouble('ff_totalcosts', _value);
  }

  final _advertManager = StreamRequestManager<List<PaidAdvertsRecord>>();
  Stream<List<PaidAdvertsRecord>> advert({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<PaidAdvertsRecord>> Function() requestFn,
  }) =>
      _advertManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAdvertCache() => _advertManager.clear();
  void clearAdvertCacheKey(String? uniqueKey) =>
      _advertManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
