import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/waether_states.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_cubit.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/widget/weather_theme.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherCubit(), //it's an object access for every bloc
      child: Builder(
        builder: (context) => BlocBuilder<WeatherCubit, WaetherStates>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                appBarTheme: AppBarThemeData(
                  backgroundColor: getThemeColor(
                    BlocProvider.of<WeatherCubit>(
                      context,
                    ).weatherModel?.weatherConition,
                  ),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        ),
      ),
    );
  }
}
