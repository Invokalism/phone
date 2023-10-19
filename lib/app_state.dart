import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _routine = [
    'today\'s \naffirmation\n\n1 min',
    'today\'s breathing \nexercise\n\n5 mins',
    'today\'s guided\nmeditation\n\n6 mins',
    'switch off for the\nday\n\n18 mins'
  ];
  List<String> get routine => _routine;
  set routine(List<String> _value) {
    _routine = _value;
  }

  void addToRoutine(String _value) {
    _routine.add(_value);
  }

  void removeFromRoutine(String _value) {
    _routine.remove(_value);
  }

  void removeAtIndexFromRoutine(int _index) {
    _routine.removeAt(_index);
  }

  void updateRoutineAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _routine[_index] = updateFn(_routine[_index]);
  }

  void insertAtIndexInRoutine(int _index, String _value) {
    _routine.insert(_index, _value);
  }

  List<String> _image = [
    'https://picsum.photos/seed/242/600',
    'https://picsum.photos/seed/472/600',
    'https://picsum.photos/seed/546/600',
    'https://picsum.photos/seed/181/600',
    'https://picsum.photos/seed/426/600'
  ];
  List<String> get image => _image;
  set image(List<String> _value) {
    _image = _value;
  }

  void addToImage(String _value) {
    _image.add(_value);
  }

  void removeFromImage(String _value) {
    _image.remove(_value);
  }

  void removeAtIndexFromImage(int _index) {
    _image.removeAt(_index);
  }

  void updateImageAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _image[_index] = updateFn(_image[_index]);
  }

  void insertAtIndexInImage(int _index, String _value) {
    _image.insert(_index, _value);
  }
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
