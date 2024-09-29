import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/services/weather_service.dart';
import 'package:weather/styles/font.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather/views/weather_view.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Search',
          style: AppTextStyles.title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Icon(
              Icons.pin_drop_outlined,
              size: 300,
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
              ),
              controller: searchFieldController,
            ),
            SizedBox(
              height: 50,
            ),
            FloatingActionButton.large(
              onPressed: () async {
                Weather weather = await WeatherService(Dio())
                    .getCurrent(city: searchFieldController.text);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return WeatherView(
                      weather: weather,
                    );
                  },
                ));
              },
              child: Icon(Icons.check_rounded),
            )
          ],
        ),
      ),
    );
  }
}
