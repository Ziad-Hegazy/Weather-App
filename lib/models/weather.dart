class Weather {
  double temp;
  double maxTemp;
  double minTemp;
  String city;
  String date;
  String? icon;
  String weatherCondition;
  Weather({
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.city,
    required this.date,
    this.icon,
    required this.weatherCondition,
  });
  factory Weather.fromJson(json) {
    return Weather(
        temp: json['current']['temp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        city: json['location']['name'],
        date: json['current']['last_updated'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        icon: 'https:' +
            json['forecast']['forecastday'][0]['day']['condition']['icon']);
  }
}
