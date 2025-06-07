import 'package:flutter/foundation.dart';

class Weather {
  final String cityName ; 
  final double temperature; 
  final String mainCondition;

  Weather ({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  }) ;

factory Weather.fromJson(Map<String, dynamic> json) {
  if (json['name'] == null || json['main'] == null || json['weather'] == null) {
    throw ArgumentError('Invalid JSON data');
  }
  return Weather(
    cityName: json['name'] as String,
    temperature: (json['main']['temp'] as num).toDouble(),
    mainCondition: json['weather'][0]['main'] as String,
  );
}
}
