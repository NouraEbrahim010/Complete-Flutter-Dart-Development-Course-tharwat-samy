import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/waether_states.dart';
import 'package:weather_app/models/waether_model.dart';
import 'package:weather_app/services/weather_servive.dart';

class WeatherCubit extends Cubit<WaetherStates> {
  WeatherCubit() : super(NoWeatherloaded());
  // final WeatherService weatherService;
  // WeatherCubit(this.weatherService) : super(WeatherState());

  WeatherModel? weatherModel;
  getCurrentWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherService(Dio()).getWeather(cityName: cityName);
      emit(Weatherloaded(weatherModel: weatherModel));
    } catch (e) {
      emit(WeatherFailure());
    }
  }

  // Future<void> getCurrentWeather(String cityName) async {
  //   try {
  //     emit(WeatherStatus.loading);

  //     weatherModel = await weatherService.getWeather(cityName: cityName);

  //     emit(WeatherStatus.success);
  //   } catch (e) {
  //     emit(WeatherStatus.failure);
  //   }
  // }
}
