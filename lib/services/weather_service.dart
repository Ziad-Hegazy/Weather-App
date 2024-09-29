import 'package:dio/dio.dart';
import 'package:weather/models/weather.dart';

class WeatherService {
  Dio dio;
  WeatherService(this.dio);
  Future<Weather> getCurrent({required String city}) async {
    Response response = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=aff4a7f82c1d4982a65153346242509&q=$city&days=1&aqi=no&alerts=no');
    Weather weather = Weather.fromJson(response.data);
    return weather;
  }
}
