import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/styles/font.dart';

class WeatherView extends StatefulWidget {
  WeatherView({super.key, required this.weather});
  Weather weather;

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.weather.city,
          style: AppTextStyles.title,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(
                widget.weather.icon!,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              widget.weather.weatherCondition,
              style: AppTextStyles.todo,
            ),
            Text(
              widget.weather.temp.toString(),
              style: AppTextStyles.title,
            ),
            Text(
              widget.weather.minTemp.toString() +
                  ' / ' +
                  widget.weather.maxTemp.toString(),
              style: AppTextStyles.subTitle,
            )
          ],
        ),
      ),
    );
  }
}
