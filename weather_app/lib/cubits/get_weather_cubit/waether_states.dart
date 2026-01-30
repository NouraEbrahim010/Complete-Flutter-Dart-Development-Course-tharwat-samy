import 'package:weather_app/models/waether_model.dart';

class WaetherStates {}

class NoWeatherloaded extends WaetherStates {}

class Weatherloaded extends WaetherStates {
  WeatherModel? weatherModel;
  Weatherloaded({required this.weatherModel});
}

class WeatherFailure extends WaetherStates {}

/*enum WaetherStates{
NoWeatherloaded,
WeatherFailure,
WeatherFailure,
}*/
