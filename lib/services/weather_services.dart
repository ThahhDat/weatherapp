import 'dart:convert';

import '../models/weather_models.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class WeatherServices {
  static const Base_URL = "https://api.openweathermap.org/data/2.5/weather";
  final String apiKey;

  WeatherServices({required this.apiKey});

  Future<Weather> getWeather(String cityName) async {
    print("City name: $cityName");
    final response = await http.get(
      Uri.parse('$Base_URL?q=$cityName&appid=$apiKey&units=metric'),
    );
    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  Future<String> getCurrenCity() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    String? city = placemarks[0].locality;
    return city ?? "Unknown";
  }

  Future<Weather> getWeatherByLocation(double lat, double lon) async {
    final response = await http.get(
      Uri.parse('$Base_URL?lat=$lat&lon=$lon&appid=$apiKey&units=metric'),
    );
    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
