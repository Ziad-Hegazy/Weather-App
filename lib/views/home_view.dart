import 'package:flutter/material.dart';
import 'package:weather/views/empty_weather.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyWeather();
  }
}
