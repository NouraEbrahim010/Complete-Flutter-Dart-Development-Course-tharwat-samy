class WeatherModel {
  final String cityName;
  final DateTime upDate;
  final String? imageUrl;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String weatherConition;

  const WeatherModel({
    required this.cityName,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.upDate,
    required this.imageUrl,
    required this.weatherConition,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      upDate: DateTime.parse(json['current']['last_updated']),
      imageUrl: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      weatherConition:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
