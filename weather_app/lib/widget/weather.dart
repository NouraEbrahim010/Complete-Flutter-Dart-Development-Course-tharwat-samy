import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_cubit.dart';
import 'package:weather_app/models/waether_model.dart';
import 'package:weather_app/widget/weather_theme.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<WeatherCubit>(
      context,
    ).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getThemeColor(weatherModel.weatherConition),
            getThemeColor(weatherModel.weatherConition)[300]!,
            getThemeColor(weatherModel.weatherConition)[50]!,
          ],
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.cityName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Updated at ${(weatherModel.upDate).hour}:${(weatherModel.upDate).minute}:${(weatherModel.upDate).second}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 35),
              Row(
                children: [
                  Spacer(flex: 1),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network('https:${weatherModel.imageUrl!}'),
                  ),
                  Spacer(flex: 4),
                  Text(
                    '${weatherModel.temp.round()}°C',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 4),
                  Text(
                    'Maxtemp: ${weatherModel.maxtemp.round()}\nMintemp: ${weatherModel.mintemp.round()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Text(
                weatherModel.weatherConition,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// function used to return DateTime object where string is time and date
// DateTime stringToDateTime(String date) {
//   return DateTime.parse(date);
// }
