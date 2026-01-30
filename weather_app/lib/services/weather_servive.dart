import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/waether_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apikey = '835fe6521f2140ecbd5173730251711';
  WeatherService(this.dio);
  Future<WeatherModel?> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apikey&q=$cityName&days=1',
      );

      WeatherModel weather = WeatherModel.fromJson(response.data);
      return weather;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'Something went wrong';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to load weather data');
    }
  }
}
