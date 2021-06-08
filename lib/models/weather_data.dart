import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

// api link : https://dl.dropbox.com/s/u1gb9ovxvtaugqj/weather.json?dl=0

class WeatherData with ChangeNotifier {
  Map<String, dynamic> _data = {};
  bool _hasError = false;
  String _hasErrorMessage = "";
  String _day = "",
      _temp = "",
      _dayCondition = "",
      _minMaxTemp = "",
      _wind = "";
  String currentDay = DateFormat('EEEE').format(DateTime.now());
  int currentTime = int.parse(DateFormat('H').format(DateTime.now()));

  Future<void> get getApiData async {
    final res = await get(
      Uri.parse('https://dl.dropbox.com/s/u1gb9ovxvtaugqj/weather.json?dl=0'),
    );

    if (res.statusCode == 200) {
      try {
        _data = jsonDecode(res.body);

        _hasError = false;
      } catch (e) {
        _hasError = true;
        _hasErrorMessage = e.toString();
        _data = {};
      }
      notifyListeners();
    } else {
      _hasError = true;
      _hasErrorMessage = "Something went wrong... Try later on!";
      _data = {};
      notifyListeners();
    }
  }

  void defaultValues() {
    _data = {};
    _hasError = false;
    _hasErrorMessage = "";
    notifyListeners();
  }

  // void dayData() {
  //   for (int i = 0; i < data['Cape Town'].length; i++) {
  //     while (_data['Cape Town'][i]['day'] == currentDay) {
  //       _day = data['Cape Town'][i]['day'];
  //       currentTime >= 18 && currentTime <= 6
  //           ? _temp = data['Cape Town'][i]['mintemp']
  //           : _temp = data['Cape Town'][i]['maxtemp'];
  //       currentTime >= 18 && currentTime <= 6
  //           ? _dayCondition = data['Cape Town'][i]['condition_day']
  //           : _dayCondition = data['Cape Town'][i]['condition_night'];

  //       _minMaxTemp =
  //           '${data['Cape Town'][i]['maxtemp']}\u00b0/${data['Cape Town'][i]['mintemp']}\u00b0';
  //       _wind = data['Cape Town'][i]['wind'];
  //     }
  //   }
  // }

// getters here
  Map<String, dynamic> get data => _data;
  bool get hasError => _hasError;
  String get hasErrorMessage => _hasErrorMessage;

  String get day => _day;
  String get temp => _temp;
  String get dayCondition => _dayCondition;
  String get minMaxTemp => _minMaxTemp;
  String get wind => _wind;
}
