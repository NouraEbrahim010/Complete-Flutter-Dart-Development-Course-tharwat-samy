import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_cubit.dart';
import 'package:weather_app/widget/weather_theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherColor = getThemeColor(
      context.watch<WeatherCubit>().weatherModel?.weatherConition,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a city',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
              await getWeatherCubit.getCurrentWeather(cityName: value);
              Navigator.pop(context, value);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 16.0,
              ),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search, color: weatherColor),
              labelStyle: TextStyle(
                color: weatherColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              hintText: 'Enter city Name',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: weatherColor),
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
