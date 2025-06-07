import 'package:flutter/material.dart';
import '../services/weather_services.dart';
import '../models/weather_models.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api key
  final _weatherService = WeatherServices(
    apiKey: 'dcbd2ebd681b4f0175b5a9ca3b9516d6',
  );
  Weather? _weather;
  //fetch weather
  _fetchWeather() async {
    double lat = 10.7769; // Vĩ độ Sài Gòn
    double lon = 106.7009; // Kinh độ Sài Gòn
    try {
      final response = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=dcbd2ebd681b4f0175b5a9ca3b9516d6&units=metric',
        ),
      );
      print(response.body);
      final weather = await _weatherService.getWeatherByLocation(lat, lon);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  //weather animation

  String _getWeatherAnimation(String mainCondition) {
    switch (mainCondition) {
      case 'Clouds':
        return 'assets/cloud.json';
      case 'Clear':
        return 'assets/sun.json';
      case 'Thunderstorm':
      case 'Rain':
      case 'Drizzle':
        return 'assets/thunder.json';
      default:
        return 'assets/cloud.json';
    }
  }

  //init state
  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ten thanh pho
            Text(_weather?.cityName ?? "Loading..."),

            //animation
            Lottie.asset('assets/cloud.json'),
            //thoi tiet
            Text('${_weather?.temperature.round()}°C'),

            Text(_weather?.mainCondition ?? "Loading..."),
          ],
        ),
      ),
    );
  }
}
